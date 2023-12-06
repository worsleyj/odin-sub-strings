dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings_found(string, substring)
    found = 0
    while string.include?(substring)
        substring_index = string.index(substring)+substring.length
        string = string.slice(substring_index..string.length)
        found += 1
    end
    return found
end

def substrings(string, substrings_array)
    substring_hash = {}
    string.downcase!
    substrings_array.each do |substring|
        substring.downcase!
        if string.include?(substring)
            substring_hash[substring] = 0
            substring_hash[substring] += substrings_found(string, substring)
        end
    end
    puts substring_hash
end

substrings("Howdy partner, sit down! How's it going?", dictionary)