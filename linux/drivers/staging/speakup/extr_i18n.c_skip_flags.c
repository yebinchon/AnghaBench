
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strchr (char*,char) ;

__attribute__((used)) static char *skip_flags(char *input)
{
 while ((*input != '\0') && strchr(" 0+-#", *input))
  input++;
 return input;
}
