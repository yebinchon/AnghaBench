
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int last_update; } ;
struct zd_mac {int lock; TYPE_1__ beacon; int hw; TYPE_2__* vif; int flags; } ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {scalar_t__ type; } ;


 scalar_t__ NL80211_IFTYPE_AP ;
 int ZD_DEVICE_RUNNING ;
 struct sk_buff* ieee80211_beacon_get (int ,TYPE_2__*) ;
 struct sk_buff* ieee80211_get_buffered_bc (int ,TYPE_2__*) ;
 int ieee80211_queue_stopped (int ,int ) ;
 int jiffies ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int test_bit (int ,int *) ;
 int zd_mac_config_beacon (int ,struct sk_buff*,int) ;
 int zd_op_tx (int ,int *,struct sk_buff*) ;

__attribute__((used)) static void zd_beacon_done(struct zd_mac *mac)
{
 struct sk_buff *skb, *beacon;

 if (!test_bit(ZD_DEVICE_RUNNING, &mac->flags))
  return;
 if (!mac->vif || mac->vif->type != NL80211_IFTYPE_AP)
  return;




 while (!ieee80211_queue_stopped(mac->hw, 0)) {
  skb = ieee80211_get_buffered_bc(mac->hw, mac->vif);
  if (!skb)
   break;
  zd_op_tx(mac->hw, ((void*)0), skb);
 }




 beacon = ieee80211_beacon_get(mac->hw, mac->vif);
 if (beacon)
  zd_mac_config_beacon(mac->hw, beacon, 1);

 spin_lock_irq(&mac->lock);
 mac->beacon.last_update = jiffies;
 spin_unlock_irq(&mac->lock);
}
