
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (char) ;

__attribute__((used)) static char *skip_width(char *input)
{
 while (isdigit(*input))
  input++;
 if (*input == '.') {
  input++;
  while (isdigit(*input))
   input++;
 }
 return input;
}
