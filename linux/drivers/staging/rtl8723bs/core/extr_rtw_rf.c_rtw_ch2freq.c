
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ channel; scalar_t__ frequency; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* ch_freq_map ;

u32 rtw_ch2freq(u32 channel)
{
 u8 i;
 u32 freq = 0;

 for (i = 0; i < ARRAY_SIZE(ch_freq_map); i++) {
  if (channel == ch_freq_map[i].channel) {
   freq = ch_freq_map[i].frequency;
    break;
  }
 }
 if (i == ARRAY_SIZE(ch_freq_map))
  freq = 2412;

 return freq;
}
