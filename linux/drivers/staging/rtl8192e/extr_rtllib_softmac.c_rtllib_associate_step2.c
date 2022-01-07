
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct rtllib_network {int dummy; } ;
struct TYPE_2__ {int tx_ass_rq; } ;
struct rtllib_device {int associate_timer; TYPE_1__ softmac_stats; int dev; struct rtllib_network current_network; } ;


 int HZ ;
 int del_timer_sync (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int netdev_dbg (int ,char*) ;
 int rtllib_associate_abort (struct rtllib_device*) ;
 struct sk_buff* rtllib_association_req (struct rtllib_network*,struct rtllib_device*) ;
 int softmac_mgmt_xmit (struct sk_buff*,struct rtllib_device*) ;

__attribute__((used)) static void rtllib_associate_step2(struct rtllib_device *ieee)
{
 struct sk_buff *skb;
 struct rtllib_network *beacon = &ieee->current_network;

 del_timer_sync(&ieee->associate_timer);

 netdev_dbg(ieee->dev, "Sending association request\n");

 ieee->softmac_stats.tx_ass_rq++;
 skb = rtllib_association_req(beacon, ieee);
 if (!skb)
  rtllib_associate_abort(ieee);
 else {
  softmac_mgmt_xmit(skb, ieee);
  mod_timer(&ieee->associate_timer, jiffies + (HZ/2));
 }
}
