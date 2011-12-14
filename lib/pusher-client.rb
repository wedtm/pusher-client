autoload :Logger, 'logger'

module PusherClient
  HOST = 'pusher.mcserverlist.net'
  WS_PORT = 1337
  WSS_PORT = 443

  @logger = Logger.new(STDOUT)

  def self.logger
    @logger
  end

  def self.logger=(logger)
    @logger = logger
  end
end

Thread.abort_on_exception = true

require File.dirname(__FILE__) + '/pusher-client/websocket.rb'
require File.dirname(__FILE__) + '/pusher-client/socket.rb'
require File.dirname(__FILE__) + '/pusher-client/channel.rb'
require File.dirname(__FILE__) + '/pusher-client/channels.rb'
