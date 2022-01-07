
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ffs (int) ;

__attribute__((used)) static u32 _rtl92e_calculate_bit_shift(u32 dwBitMask)
{
 if (!dwBitMask)
  return 32;
 return ffs(dwBitMask) - 1;
}
