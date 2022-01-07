
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char tolower (char) ;

char *spk_strlwr(char *s)
{
 char *p;

 if (!s)
  return ((void*)0);

 for (p = s; *p; p++)
  *p = tolower(*p);
 return s;
}
