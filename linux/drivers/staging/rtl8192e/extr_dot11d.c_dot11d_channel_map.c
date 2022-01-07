
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct rtllib_device {int global_domain; int bss_start_channel; int ibss_maxjoin_chal; } ;
struct TYPE_4__ {int* channel_map; } ;
struct TYPE_3__ {int len; int* channel; } ;




 TYPE_2__* GET_DOT11D_INFO (struct rtllib_device*) ;
 TYPE_1__* channel_array ;
 int memset (int*,int ,int) ;

void dot11d_channel_map(u8 channel_plan, struct rtllib_device *ieee)
{
 int i, max_chan = 14, min_chan = 1;

 ieee->global_domain = 0;

 if (channel_array[channel_plan].len != 0) {
  memset(GET_DOT11D_INFO(ieee)->channel_map, 0,
         sizeof(GET_DOT11D_INFO(ieee)->channel_map));
  for (i = 0; i < channel_array[channel_plan].len; i++) {
   if (channel_array[channel_plan].channel[i] < min_chan ||
       channel_array[channel_plan].channel[i] > max_chan)
    break;
   GET_DOT11D_INFO(ieee)->channel_map[channel_array
     [channel_plan].channel[i]] = 1;
  }
 }

 switch (channel_plan) {
 case 129:
  ieee->global_domain = 1;
  for (i = 12; i <= 14; i++)
   GET_DOT11D_INFO(ieee)->channel_map[i] = 2;
  ieee->bss_start_channel = 10;
  ieee->ibss_maxjoin_chal = 11;
  break;

 case 128:
  for (i = 12; i <= 13; i++)
   GET_DOT11D_INFO(ieee)->channel_map[i] = 2;
  ieee->bss_start_channel = 10;
  ieee->ibss_maxjoin_chal = 11;
  break;

 default:
  ieee->bss_start_channel = 1;
  ieee->ibss_maxjoin_chal = 14;
  break;
 }
}
