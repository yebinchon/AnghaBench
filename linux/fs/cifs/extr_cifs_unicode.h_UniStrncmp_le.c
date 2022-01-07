
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;


 scalar_t__ const __le16_to_cpu (scalar_t__ const) ;

__attribute__((used)) static inline int
UniStrncmp_le(const wchar_t *ucs1, const wchar_t *ucs2, size_t n)
{
 if (!n)
  return 0;
 while ((*ucs1 == __le16_to_cpu(*ucs2)) && *ucs1 && --n) {
  ucs1++;
  ucs2++;
 }
 return (int) *ucs1 - (int) __le16_to_cpu(*ucs2);
}
