
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



__attribute__((used)) static inline wchar_t *
UniStrcpy(wchar_t *ucs1, const wchar_t *ucs2)
{
 wchar_t *anchor = ucs1;

 while ((*ucs1++ = *ucs2++)) ;
 return anchor;
}
