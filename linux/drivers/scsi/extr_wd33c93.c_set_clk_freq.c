
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar ;


 int WD33C93_FS_12_15 ;
 int WD33C93_FS_16_20 ;
 int WD33C93_FS_8_10 ;

__attribute__((used)) static uchar
set_clk_freq(int freq, int *mhz)
{
 int x = freq;
 if (WD33C93_FS_8_10 == freq)
  freq = 8;
 else if (WD33C93_FS_12_15 == freq)
  freq = 12;
 else if (WD33C93_FS_16_20 == freq)
  freq = 16;
 else if (freq > 7 && freq < 11)
  x = WD33C93_FS_8_10;
  else if (freq > 11 && freq < 16)
  x = WD33C93_FS_12_15;
  else if (freq > 15 && freq < 21)
  x = WD33C93_FS_16_20;
 else {

  x = WD33C93_FS_8_10;
  freq = 8;
 }
 *mhz = freq;
 return x;
}
