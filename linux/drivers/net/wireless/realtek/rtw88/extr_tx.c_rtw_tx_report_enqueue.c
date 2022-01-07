
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct rtw_tx_report {int purge_timer; int q_lock; int queue; } ;
struct rtw_dev {struct rtw_tx_report tx_report; } ;
struct TYPE_3__ {scalar_t__ status_driver_data; } ;
struct TYPE_4__ {TYPE_1__ status; } ;


 TYPE_2__* IEEE80211_SKB_CB (struct sk_buff*) ;
 scalar_t__ RTW_TX_PROBE_TIMEOUT ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void rtw_tx_report_enqueue(struct rtw_dev *rtwdev, struct sk_buff *skb, u8 sn)
{
 struct rtw_tx_report *tx_report = &rtwdev->tx_report;
 unsigned long flags;
 u8 *drv_data;


 drv_data = (u8 *)IEEE80211_SKB_CB(skb)->status.status_driver_data;
 *drv_data = sn;

 spin_lock_irqsave(&tx_report->q_lock, flags);
 __skb_queue_tail(&tx_report->queue, skb);
 spin_unlock_irqrestore(&tx_report->q_lock, flags);

 mod_timer(&tx_report->purge_timer, jiffies + RTW_TX_PROBE_TIMEOUT);
}
