import Data.Char

reverseWords :: String -> String
reverseWords = unwords . map reverse . words

main :: IO ()
main = do
    line <- getLine
    if null line
        then return ()
        else do
            putStrLn $ reverseWords line
            main
