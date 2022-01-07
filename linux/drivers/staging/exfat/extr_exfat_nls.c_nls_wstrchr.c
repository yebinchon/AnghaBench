
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;



__attribute__((used)) static u16 *nls_wstrchr(u16 *str, u16 wchar)
{
 while (*str) {
  if (*(str++) == wchar)
   return str;
 }

 return ((void*)0);
}
