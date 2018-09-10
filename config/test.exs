use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :demo, DemoWeb.Endpoint,
  http: [port: 4001],
  server: true

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :demo, Demo.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "password",
  database: "demo_test",
  hostname: "postgres",
  pool: Ecto.Adapters.SQL.Sandbox,
  timeout: 15_000,
  ownership_timeout: 10_000

config :demo, sql_sandbox: true
