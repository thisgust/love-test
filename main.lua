function love.load()
	love.window.setTitle("Testing LOVE")
	love.graphics.setDefaultFilter("nearest", "nearest")

	player = {}
	player.x = 0
	player.y = 0
	player.vx = 0
	player.vy = 0
	player.width = 2 
	player.height = 2 
	player.sprite = love.graphics.newImage("Jump (32x32).png")
end

function love.draw()
	love.graphics.draw(player.sprite, player.x, player.y, 0, player.width, player.height)
end

function love.update(dt)
	player.vy = player.vy + 25 * dt
	player.y = player.y + player.vy
end
