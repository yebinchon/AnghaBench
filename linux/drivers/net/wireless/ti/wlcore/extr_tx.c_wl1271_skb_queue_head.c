
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct wl12xx_vif {size_t last_tx_hlid; int * tx_queue_count; } ;
struct wl1271 {size_t num_links; int wl_lock; int * tx_queue_count; TYPE_1__* links; int flags; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int * tx_queue; } ;


 int WL1271_FLAG_DUMMY_PACKET_PENDING ;
 int set_bit (int ,int *) ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wl1271_tx_get_queue (int ) ;
 scalar_t__ wl12xx_is_dummy_packet (struct wl1271*,struct sk_buff*) ;

__attribute__((used)) static void wl1271_skb_queue_head(struct wl1271 *wl, struct wl12xx_vif *wlvif,
      struct sk_buff *skb, u8 hlid)
{
 unsigned long flags;
 int q = wl1271_tx_get_queue(skb_get_queue_mapping(skb));

 if (wl12xx_is_dummy_packet(wl, skb)) {
  set_bit(WL1271_FLAG_DUMMY_PACKET_PENDING, &wl->flags);
 } else {
  skb_queue_head(&wl->links[hlid].tx_queue[q], skb);


  wlvif->last_tx_hlid = (hlid + wl->num_links - 1) %
          wl->num_links;
 }

 spin_lock_irqsave(&wl->wl_lock, flags);
 wl->tx_queue_count[q]++;
 if (wlvif)
  wlvif->tx_queue_count[q]++;
 spin_unlock_irqrestore(&wl->wl_lock, flags);
}
