
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt_channel_info {int const ChannelNum; } ;



int rtw_ch_set_search_ch(struct rt_channel_info *ch_set, const u32 ch)
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
