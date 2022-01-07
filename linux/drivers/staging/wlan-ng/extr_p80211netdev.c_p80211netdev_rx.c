
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlandevice {int rx_bh; int nsd_rxq; } ;
struct sk_buff {int dummy; } ;


 int skb_queue_tail (int *,struct sk_buff*) ;
 int tasklet_schedule (int *) ;

void p80211netdev_rx(struct wlandevice *wlandev, struct sk_buff *skb)
{

 skb_queue_tail(&wlandev->nsd_rxq, skb);
 tasklet_schedule(&wlandev->rx_bh);
}
