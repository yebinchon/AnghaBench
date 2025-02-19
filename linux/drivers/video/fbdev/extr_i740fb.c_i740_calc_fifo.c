
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i740fb_par {int has_sgram; } ;



__attribute__((used)) static u32 i740_calc_fifo(struct i740fb_par *par, u32 freq, int bpp)
{
 u32 wm;

 switch (bpp) {
 case 8:
  if (freq > 200)
   wm = 0x18120000;
  else if (freq > 175)
   wm = 0x16110000;
  else if (freq > 135)
   wm = 0x120E0000;
  else
   wm = 0x100D0000;
  break;
 case 15:
 case 16:
  if (par->has_sgram) {
   if (freq > 140)
    wm = 0x2C1D0000;
   else if (freq > 120)
    wm = 0x2C180000;
   else if (freq > 100)
    wm = 0x24160000;
   else if (freq > 90)
    wm = 0x18120000;
   else if (freq > 50)
    wm = 0x16110000;
   else if (freq > 32)
    wm = 0x13100000;
   else
    wm = 0x120E0000;
  } else {
   if (freq > 160)
    wm = 0x28200000;
   else if (freq > 140)
    wm = 0x2A1E0000;
   else if (freq > 130)
    wm = 0x2B1A0000;
   else if (freq > 120)
    wm = 0x2C180000;
   else if (freq > 100)
    wm = 0x24180000;
   else if (freq > 90)
    wm = 0x18120000;
   else if (freq > 50)
    wm = 0x16110000;
   else if (freq > 32)
    wm = 0x13100000;
   else
    wm = 0x120E0000;
  }
  break;
 case 24:
  if (par->has_sgram) {
   if (freq > 130)
    wm = 0x31200000;
   else if (freq > 120)
    wm = 0x2E200000;
   else if (freq > 100)
    wm = 0x2C1D0000;
   else if (freq > 80)
    wm = 0x25180000;
   else if (freq > 64)
    wm = 0x24160000;
   else if (freq > 49)
    wm = 0x18120000;
   else if (freq > 32)
    wm = 0x16110000;
   else
    wm = 0x13100000;
  } else {
   if (freq > 120)
    wm = 0x311F0000;
   else if (freq > 100)
    wm = 0x2C1D0000;
   else if (freq > 80)
    wm = 0x25180000;
   else if (freq > 64)
    wm = 0x24160000;
   else if (freq > 49)
    wm = 0x18120000;
   else if (freq > 32)
    wm = 0x16110000;
   else
    wm = 0x13100000;
  }
  break;
 case 32:
  if (par->has_sgram) {
   if (freq > 80)
    wm = 0x2A200000;
   else if (freq > 60)
    wm = 0x281A0000;
   else if (freq > 49)
    wm = 0x25180000;
   else if (freq > 32)
    wm = 0x18120000;
   else
    wm = 0x16110000;
  } else {
   if (freq > 80)
    wm = 0x29200000;
   else if (freq > 60)
    wm = 0x281A0000;
   else if (freq > 49)
    wm = 0x25180000;
   else if (freq > 32)
    wm = 0x18120000;
   else
    wm = 0x16110000;
  }
  break;
 }

 return wm;
}
