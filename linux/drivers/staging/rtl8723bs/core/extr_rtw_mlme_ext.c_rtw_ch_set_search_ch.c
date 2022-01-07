
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int const ChannelNum; } ;
typedef TYPE_1__ RT_CHANNEL_INFO ;



int rtw_ch_set_search_ch(RT_CHANNEL_INFO *ch_set, const u32 ch)
{
 int i;
 for (i = 0; ch_set[i].ChannelNum != 0; i++) {
  if (ch == ch_set[i].ChannelNum)
   break;
 }

 if (i >= ch_set[i].ChannelNum)
  return -1;
 return i;
}
