#!e:\perl\bin -w

no strict;
use warnings;



$intxt = "..\\final\\Text-1.txt";
print ($intxt, "\n");

$outhtml = "\.\.\\out\\end-test.html" ;
print ($outhtml, "\n");

open(OUTFILE, '>', $outhtml) ||
   die ("cannot open output file outfile\n");

$head = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> 
<html lang="en">
<head>
    <title>Dandan Perl Test of translation</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

</head>
<body>';

print OUTFILE ($head, "\n");


$i = 1;
 if (open(INFILE, $intxt))
 {
 $line = <INFILE>;
 
 print OUTFILE ($i++, "   ", $line, '<br/>');
 
 
 while ($line ne "")
 {
  #print ($line);
 $line = <INFILE> || "";
 print OUTFILE ($i++, "   ", $line, '<br/>');
 }
 }

$foot = '</body>
</html>
';
print OUTFILE ("\n", $foot);
close (OUTFILE);
close (INFILE);