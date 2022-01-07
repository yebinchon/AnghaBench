
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271_rx_descriptor {int status; } ;
struct wl1271 {int dummy; } ;
struct sk_buff {int ip_summed; } ;


 int CHECKSUM_UNNECESSARY ;
 int WL18XX_RX_CHECKSUM_MASK ;

__attribute__((used)) static void wl18xx_set_rx_csum(struct wl1271 *wl,
          struct wl1271_rx_descriptor *desc,
          struct sk_buff *skb)
{
 if (desc->status & WL18XX_RX_CHECKSUM_MASK)
  skb->ip_summed = CHECKSUM_UNNECESSARY;
}
