
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ channel; scalar_t__ frequency; } ;


 TYPE_1__* ch_freq_map ;
 size_t ch_freq_map_num ;

u32 rtw_ch2freq(u32 channel)
{
 u8 i;
 u32 freq = 0;

 for (i = 0; i < ch_freq_map_num; i++) {
  if (channel == ch_freq_map[i].channel) {
   freq = ch_freq_map[i].frequency;
    break;
  }
 }
 if (i == ch_freq_map_num)
  freq = 2412;

 return freq;
}
