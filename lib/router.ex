defmodule MyApp.Router do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    Process.sleep(120_000)

    send_resp(conn, 200, "Hello, world!")
  end
end
