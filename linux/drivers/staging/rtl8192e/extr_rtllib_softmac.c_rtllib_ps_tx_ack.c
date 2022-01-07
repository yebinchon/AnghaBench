
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtllib_device {scalar_t__ sta_sleep; int lock; int mgmt_tx_lock; TYPE_1__* pHTInfo; int ps_time; int dev; int (* enter_sleep_state ) (int ,int ) ;} ;
struct TYPE_2__ {int IOTAction; } ;


 int HT_IOT_ACT_NULL_DATA_POWER_SAVING ;
 scalar_t__ LPS_IS_SLEEP ;
 scalar_t__ LPS_IS_WAKE ;
 scalar_t__ LPS_WAIT_NULL_DATA_SEND ;
 int rtllib_sta_ps_send_null_frame (struct rtllib_device*,int ) ;
 int rtllib_sta_ps_send_pspoll_frame (struct rtllib_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int ) ;

void rtllib_ps_tx_ack(struct rtllib_device *ieee, short success)
{
 unsigned long flags, flags2;

 spin_lock_irqsave(&ieee->lock, flags);

 if (ieee->sta_sleep == LPS_WAIT_NULL_DATA_SEND) {

  if (success) {
   ieee->sta_sleep = LPS_IS_SLEEP;
   ieee->enter_sleep_state(ieee->dev, ieee->ps_time);
  }



 } else {

  if ((ieee->sta_sleep == LPS_IS_WAKE) && !success) {
   spin_lock_irqsave(&ieee->mgmt_tx_lock, flags2);
   if (ieee->pHTInfo->IOTAction &
       HT_IOT_ACT_NULL_DATA_POWER_SAVING)
    rtllib_sta_ps_send_null_frame(ieee, 0);
   else
    rtllib_sta_ps_send_pspoll_frame(ieee);
   spin_unlock_irqrestore(&ieee->mgmt_tx_lock, flags2);
  }
 }
 spin_unlock_irqrestore(&ieee->lock, flags);
}
