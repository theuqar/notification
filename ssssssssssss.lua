-- Create a ScreenGui to hold the notification
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "NotificationGui"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a TextLabel for the notification content
local TextLabel = Instance.new("TextLabel")
TextLabel.Name = "Notification"
TextLabel.Parent = ScreenGui
TextLabel.Size = UDim2.new(0, 350, 0, 50)
TextLabel.Position = UDim2.new(1, -400, 1, -70)
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.BackgroundTransparency = 0.5
TextLabel.BorderSizePixel = 0
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 18
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Center
TextLabel.TextYAlignment = Enum.TextYAlignment.Center
TextLabel.Text = "TheQuarAPI\nBy th1quar on discord"

-- Create a Timer to remove the notification after 5 seconds
local Timer = Instance.new("Timer")
Timer.Name = "NotificationTimer"
Timer.Parent = TextLabel
Timer.Interval = 3
Timer.TimerCompleted:Connect(function()
    ScreenGui:Destroy()
end)

-- Display the notification
ScreenGui.Enabled = true

-- Make sure the notification is visible above other UI elements
TextLabel:TweenPosition(UDim2.new(1, -220, 1, -70), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5, true)
