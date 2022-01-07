
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static int bnx2i_power_of2(u32 val)
{
 u32 power = 0;
 if (val & (val - 1))
  return power;
 val--;
 while (val) {
  val = val >> 1;
  power++;
 }
 return power;
}
