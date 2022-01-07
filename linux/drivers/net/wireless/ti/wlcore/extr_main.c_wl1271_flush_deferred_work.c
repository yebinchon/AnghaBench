
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int hw; int deferred_tx_queue; int deferred_rx_queue; } ;
struct sk_buff {int dummy; } ;


 int ieee80211_rx_ni (int ,struct sk_buff*) ;
 int ieee80211_tx_status_ni (int ,struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static void wl1271_flush_deferred_work(struct wl1271 *wl)
{
 struct sk_buff *skb;


 while ((skb = skb_dequeue(&wl->deferred_rx_queue)))
  ieee80211_rx_ni(wl->hw, skb);


 while ((skb = skb_dequeue(&wl->deferred_tx_queue)))
  ieee80211_tx_status_ni(wl->hw, skb);
}
