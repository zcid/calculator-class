class Calculator
  # parses the input
  def self.parse?(input)
    @value1 = 29
    @value2 = -32
    @operator = '*'

    return true
  end

  # control method
  # prompts user for input and controls parser and math functions
  def self.start
    while true do
      puts "Enter an equation to evaluate. Type 'quit' to exit."
      puts
      input = gets.chomp
      if input.downcase == 'quit'
        return
      end

      # collect values
      if not parse?(input)
        puts "Invalid input."
        next
      end

      # call appropriate function
      case @operator
      when '+'
        then add
      when '-'
        then subtract
      when '*'
        then mult
      when '/'
        then div
      end

      puts
    end
  end

  def self.add
    puts @value1 + @value2
  end

  def self.sub
    puts @value1 - @value2
  end

  def self.mult
    puts @value1 * @value2
  end

  def self.div
    if not @value2 == 0
      puts @value1 / @value2
    else
      puts "Cannot divide by zero."
    end
  end

  private :add, :sub, :mult, :div
end
