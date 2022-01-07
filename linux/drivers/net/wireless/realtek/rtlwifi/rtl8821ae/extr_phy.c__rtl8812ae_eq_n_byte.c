
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef size_t u32 ;



__attribute__((used)) static bool _rtl8812ae_eq_n_byte(u8 *str1, u8 *str2, u32 num)
{
 if (num == 0)
  return 0;
 while (num > 0) {
  num--;
  if (str1[num] != str2[num])
   return 0;
 }
 return 1;
}
