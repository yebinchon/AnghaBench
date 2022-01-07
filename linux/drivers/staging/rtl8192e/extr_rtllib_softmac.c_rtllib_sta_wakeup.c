
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtllib_device {scalar_t__ sta_sleep; int ack_tx_to_ieee; int polling; TYPE_1__* pHTInfo; int dev; int (* sta_wake_up ) (int ) ;} ;
struct TYPE_2__ {int IOTAction; } ;


 int HT_IOT_ACT_NULL_DATA_POWER_SAVING ;
 scalar_t__ LPS_IS_SLEEP ;
 scalar_t__ LPS_IS_WAKE ;
 int rtllib_sta_ps_send_null_frame (struct rtllib_device*,int ) ;
 int rtllib_sta_ps_send_pspoll_frame (struct rtllib_device*) ;
 int stub1 (int ) ;

__attribute__((used)) static void rtllib_sta_wakeup(struct rtllib_device *ieee, short nl)
{
 if (ieee->sta_sleep == LPS_IS_WAKE) {
  if (nl) {
   if (ieee->pHTInfo->IOTAction &
       HT_IOT_ACT_NULL_DATA_POWER_SAVING) {
    ieee->ack_tx_to_ieee = 1;
    rtllib_sta_ps_send_null_frame(ieee, 0);
   } else {
    ieee->ack_tx_to_ieee = 1;
    rtllib_sta_ps_send_pspoll_frame(ieee);
   }
  }
  return;

 }

 if (ieee->sta_sleep == LPS_IS_SLEEP)
  ieee->sta_wake_up(ieee->dev);
 if (nl) {
  if (ieee->pHTInfo->IOTAction &
      HT_IOT_ACT_NULL_DATA_POWER_SAVING) {
   ieee->ack_tx_to_ieee = 1;
   rtllib_sta_ps_send_null_frame(ieee, 0);
  } else {
   ieee->ack_tx_to_ieee = 1;
   ieee->polling = 1;
   rtllib_sta_ps_send_pspoll_frame(ieee);
  }

 } else {
  ieee->sta_sleep = LPS_IS_WAKE;
  ieee->polling = 0;
 }
}
