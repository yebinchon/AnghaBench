
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {struct sk_buff* dummy_packet; } ;
struct sk_buff {int dummy; } ;



bool wl12xx_is_dummy_packet(struct wl1271 *wl, struct sk_buff *skb)
{
 return wl->dummy_packet == skb;
}
