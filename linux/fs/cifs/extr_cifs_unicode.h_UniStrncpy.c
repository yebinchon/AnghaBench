
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;



__attribute__((used)) static inline wchar_t *
UniStrncpy(wchar_t *ucs1, const wchar_t *ucs2, size_t n)
{
 wchar_t *anchor = ucs1;

 while (n-- && *ucs2)
  *ucs1++ = *ucs2++;

 n++;
 while (n--)
  *ucs1++ = 0;
 return anchor;
}
