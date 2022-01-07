
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strchr (char*,char) ;

__attribute__((used)) static char *skip_conversion(char *input)
{
 if ((input[0] == 'l') && (input[1] == 'd'))
  input += 2;
 else if ((*input != '\0') && strchr("cdsx", *input))
  input++;
 return input;
}
