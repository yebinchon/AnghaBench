
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (char) ;

__attribute__((used)) static char *skip_prefix(char *s, const char *prefix)
{
 while (*prefix)
  if (*s++ != *prefix++)
   return ((void*)0);
 if (isalnum(*s))
  return ((void*)0);
 return s;
}
