
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;

__attribute__((used)) static char *next_specifier(char *input)
{
 int found = 0;
 char *next_percent = input;

 while (next_percent && !found) {
  next_percent = strchr(next_percent, '%');
  if (next_percent) {

   while (next_percent[0] == '%' &&
          next_percent[1] == '%')
    next_percent += 2;
   if (*next_percent == '%')
    found = 1;
   else if (*next_percent == '\0')
    next_percent = ((void*)0);
  }
 }

 return next_percent;
}
