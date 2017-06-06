class PigLatinizer

  def initialize
  end

  def text

  end

  def vowel?(string)
    vowels = "aeoui".split("")
    vowels.include?(string[0].downcase)
  end

  def pigify_consonant(string)
    vowels = "aeoui".split("")
    pigified = nil
    i = 0
    while i < string.length
      if vowels.include?(string[i])
        pigified = string.slice(i, string.length) + string.slice(0, i) + "ay"
        break
      else
        i += 1
      end
    end
    pigified
  end

  def piglatinize(word)
    if vowel?(word)
      word + "way"
    else
      pigify_consonant(word)
    end
  end

  def to_pig_latin(text)
    sen = text.split(" ")
    sen.map do |string|
      if vowel?(string)
        string + "way"
      else
        pigify_consonant(string)
      end
    end.join(" ")
  end

end
