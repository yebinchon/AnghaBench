
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {short channel; int beacon_interval; } ;
struct rtllib_device {int proto_started; int* last_rxseq_num; int* last_rxfrag_num; scalar_t__ iw_mode; int dev; int (* UpdateBeaconInterruptHandler ) (int ,int) ;scalar_t__ wmm_acm; scalar_t__* last_packet_time; TYPE_1__ current_network; int * active_channel_map; } ;


 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ IW_MODE_INFRA ;
 scalar_t__ IW_MODE_MASTER ;
 scalar_t__ IW_MODE_MONITOR ;
 short MAX_CHANNEL_NUMBER ;
 int rtllib_start_bss (struct rtllib_device*) ;
 int rtllib_start_ibss (struct rtllib_device*) ;
 int rtllib_start_master_bss (struct rtllib_device*) ;
 int rtllib_start_monitor_mode (struct rtllib_device*) ;
 int rtllib_update_active_chan_map (struct rtllib_device*) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;

void rtllib_start_protocol(struct rtllib_device *ieee)
{
 short ch = 0;
 int i = 0;

 rtllib_update_active_chan_map(ieee);

 if (ieee->proto_started)
  return;

 ieee->proto_started = 1;

 if (ieee->current_network.channel == 0) {
  do {
   ch++;
   if (ch > MAX_CHANNEL_NUMBER)
    return;
  } while (!ieee->active_channel_map[ch]);
  ieee->current_network.channel = ch;
 }

 if (ieee->current_network.beacon_interval == 0)
  ieee->current_network.beacon_interval = 100;

 for (i = 0; i < 17; i++) {
  ieee->last_rxseq_num[i] = -1;
  ieee->last_rxfrag_num[i] = -1;
  ieee->last_packet_time[i] = 0;
 }

 if (ieee->UpdateBeaconInterruptHandler)
  ieee->UpdateBeaconInterruptHandler(ieee->dev, 0);

 ieee->wmm_acm = 0;





 if (ieee->iw_mode == IW_MODE_INFRA) {
  rtllib_start_bss(ieee);
 } else if (ieee->iw_mode == IW_MODE_ADHOC) {
  if (ieee->UpdateBeaconInterruptHandler)
   ieee->UpdateBeaconInterruptHandler(ieee->dev, 1);

  rtllib_start_ibss(ieee);

 } else if (ieee->iw_mode == IW_MODE_MASTER) {
  rtllib_start_master_bss(ieee);
 } else if (ieee->iw_mode == IW_MODE_MONITOR) {
  rtllib_start_monitor_mode(ieee);
 }
}
