
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int s32 ;



__attribute__((used)) static inline int w1_DS18S20_convert_temp(u8 rom[9])
{
 int t, h;

 if (!rom[7])
  return 0;

 if (rom[1] == 0)
  t = ((s32)rom[0] >> 1)*1000;
 else
  t = 1000*(-1*(s32)(0x100-rom[0]) >> 1);

 t -= 250;
 h = 1000*((s32)rom[7] - (s32)rom[6]);
 h /= (s32)rom[7];
 t += h;

 return t;
}
