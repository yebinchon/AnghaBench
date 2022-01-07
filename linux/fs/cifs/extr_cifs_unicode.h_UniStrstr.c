
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;



__attribute__((used)) static inline wchar_t *
UniStrstr(const wchar_t *ucs1, const wchar_t *ucs2)
{
 const wchar_t *anchor1 = ucs1;
 const wchar_t *anchor2 = ucs2;

 while (*ucs1) {
  if (*ucs1 == *ucs2) {

   ucs1++;
   ucs2++;
  } else {
   if (!*ucs2)
    return (wchar_t *) anchor1;
   ucs1 = ++anchor1;
   ucs2 = anchor2;
  }
 }

 if (!*ucs2)
  return (wchar_t *) anchor1;
 return ((void*)0);
}
