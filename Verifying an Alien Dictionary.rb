# @param {String[]} words
# @param {String} order
# @return {Boolean}
def is_alien_sorted(words, order)
    order_map = {}
    order.split('').each_with_index do |c, i|
        order_map[c] = i
    end
    new_words = words.map do |word|
        word.split('').map do |c|
            ('a'..'z').to_a[order_map[c]]
        end.join('')
    end
    p new_words
    new_words.sort == new_words
end
