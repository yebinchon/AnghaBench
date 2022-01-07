
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int char_count(const char *str, char c)
{
 unsigned int i, ret = 0;

 for (i = 0; str[i]; i++)
  if (str[i] == c)
   ret++;
 return ret;
}
