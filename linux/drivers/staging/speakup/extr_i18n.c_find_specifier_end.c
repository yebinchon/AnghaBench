
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* skip_conversion (char*) ;
 char* skip_flags (char*) ;
 char* skip_width (char*) ;

__attribute__((used)) static char *find_specifier_end(char *input)
{
 input++;
 input = skip_flags(input);
 input = skip_width(input);
 input = skip_conversion(input);
 return input;
}
