
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const wchar_t ;



__attribute__((used)) static inline wchar_t *
UniStrchr(const wchar_t *ucs, wchar_t uc)
{
 while ((*ucs != uc) && *ucs)
  ucs++;

 if (*ucs == uc)
  return (wchar_t *) ucs;
 return ((void*)0);
}
