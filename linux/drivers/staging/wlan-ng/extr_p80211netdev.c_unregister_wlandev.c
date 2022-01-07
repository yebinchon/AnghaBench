
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlandevice {int nsd_rxq; int netdev; } ;
struct sk_buff {int dummy; } ;


 int dev_kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int unregister_netdev (int ) ;

int unregister_wlandev(struct wlandevice *wlandev)
{
 struct sk_buff *skb;

 unregister_netdev(wlandev->netdev);


 while ((skb = skb_dequeue(&wlandev->nsd_rxq)))
  dev_kfree_skb(skb);

 return 0;
}
