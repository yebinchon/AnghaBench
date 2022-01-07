
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 char* kmalloc (scalar_t__,int ) ;
 scalar_t__ strlen (char const*) ;
 int toupper (int ) ;

__attribute__((used)) static char *kstruprdup(const char *str, gfp_t gfp)
{
 char *ret, *ustr;

 ustr = ret = kmalloc(strlen(str) + 1, gfp);

 if (!ret)
  return ((void*)0);

 while (*str)
  *ustr++ = toupper(*str++);

 *ustr = 0;

 return ret;
}
