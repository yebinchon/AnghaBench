
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static unsigned int count_strings(const char *strings, unsigned int len)
{
 unsigned int num;
 const char *p;

 for (p = strings, num = 0; p < strings + len; p += strlen(p) + 1)
  num++;

 return num;
}
