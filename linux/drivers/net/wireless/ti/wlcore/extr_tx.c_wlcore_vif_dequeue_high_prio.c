
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl12xx_vif {int last_tx_hlid; int links_map; } ;
struct wl1271 {int num_links; } ;
struct sk_buff {int dummy; } ;


 int test_bit (int,int ) ;
 struct sk_buff* wlcore_lnk_dequeue_high_prio (struct wl1271*,int,int,int*) ;

__attribute__((used)) static struct sk_buff *wlcore_vif_dequeue_high_prio(struct wl1271 *wl,
          struct wl12xx_vif *wlvif,
          u8 ac, u8 *hlid,
          u8 *low_prio_hlid)
{
 struct sk_buff *skb = ((void*)0);
 int i, h, start_hlid;


 start_hlid = (wlvif->last_tx_hlid + 1) % wl->num_links;


 for (i = 0; i < wl->num_links; i++) {
  h = (start_hlid + i) % wl->num_links;


  if (!test_bit(h, wlvif->links_map))
   continue;

  skb = wlcore_lnk_dequeue_high_prio(wl, h, ac,
         low_prio_hlid);
  if (!skb)
   continue;

  wlvif->last_tx_hlid = h;
  break;
 }

 if (!skb)
  wlvif->last_tx_hlid = 0;

 *hlid = wlvif->last_tx_hlid;
 return skb;
}
