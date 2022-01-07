
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERANGE ;

__attribute__((used)) static int strsep_len(const char *str, char c, unsigned int len)
{
 unsigned int i;

 for (i = 0; str[i]; i++)
  if (str[i] == c) {
   if (len == 0)
    return i;
   len--;
  }
 return (len == 0) ? i : -ERANGE;
}
