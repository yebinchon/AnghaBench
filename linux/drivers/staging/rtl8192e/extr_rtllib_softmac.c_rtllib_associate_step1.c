
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct rtllib_network {int dummy; } ;
struct TYPE_5__ {scalar_t__ expires; } ;
struct TYPE_4__ {int tx_auth_rq; } ;
struct rtllib_device {TYPE_2__ associate_timer; int dev; int state; TYPE_1__ softmac_stats; struct rtllib_network current_network; } ;


 int HZ ;
 int RTLLIB_ASSOCIATING_AUTHENTICATING ;
 int add_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;
 int netdev_dbg (int ,char*) ;
 int rtllib_associate_abort (struct rtllib_device*) ;
 struct sk_buff* rtllib_authentication_req (struct rtllib_network*,struct rtllib_device*,int ,int *) ;
 int softmac_mgmt_xmit (struct sk_buff*,struct rtllib_device*) ;
 int timer_pending (TYPE_2__*) ;

__attribute__((used)) static void rtllib_associate_step1(struct rtllib_device *ieee, u8 *daddr)
{
 struct rtllib_network *beacon = &ieee->current_network;
 struct sk_buff *skb;

 netdev_dbg(ieee->dev, "Stopping scan\n");

 ieee->softmac_stats.tx_auth_rq++;

 skb = rtllib_authentication_req(beacon, ieee, 0, daddr);

 if (!skb)
  rtllib_associate_abort(ieee);
 else {
  ieee->state = RTLLIB_ASSOCIATING_AUTHENTICATING;
  netdev_dbg(ieee->dev, "Sending authentication request\n");
  softmac_mgmt_xmit(skb, ieee);
  if (!timer_pending(&ieee->associate_timer)) {
   ieee->associate_timer.expires = jiffies + (HZ / 2);
   add_timer(&ieee->associate_timer);
  }
 }
}
