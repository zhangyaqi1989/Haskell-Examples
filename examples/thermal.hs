update :: (Num a) => [a] -> [a]
update xs = [x - 10 | x <- xs]

-- update temperature
--
simulate :: (Integral n, Num a) => n -> [a] -> [a]
simulate n xs
  | n <= 0 = xs
  | otherwise = simulate (n-1) (update xs)


main = do
  let temps = replicate 10 (273.15 + 270)
  print (simulate 20 temps)
