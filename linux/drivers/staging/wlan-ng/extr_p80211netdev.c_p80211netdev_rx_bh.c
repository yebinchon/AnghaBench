
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlandevice {scalar_t__ state; int nsd_rxq; struct net_device* netdev; } ;
struct sk_buff {scalar_t__ len; int protocol; int pkt_type; int ip_summed; struct net_device* dev; } ;
struct TYPE_2__ {int rx_bytes; int rx_packets; } ;
struct net_device {scalar_t__ type; TYPE_1__ stats; } ;


 scalar_t__ ARPHRD_ETHER ;
 int CHECKSUM_NONE ;
 int ETH_P_80211_RAW ;
 int PACKET_OTHERHOST ;
 scalar_t__ WLAN_DEVICE_OPEN ;
 int dev_kfree_skb (struct sk_buff*) ;
 int htons (int ) ;
 int netif_rx_ni (struct sk_buff*) ;
 int p80211_convert_to_ether (struct wlandevice*,struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static void p80211netdev_rx_bh(unsigned long arg)
{
 struct wlandevice *wlandev = (struct wlandevice *)arg;
 struct sk_buff *skb = ((void*)0);
 struct net_device *dev = wlandev->netdev;


 while ((skb = skb_dequeue(&wlandev->nsd_rxq))) {
  if (wlandev->state == WLAN_DEVICE_OPEN) {
   if (dev->type != ARPHRD_ETHER) {




    skb->dev = dev;
    skb_reset_mac_header(skb);
    skb->ip_summed = CHECKSUM_NONE;
    skb->pkt_type = PACKET_OTHERHOST;
    skb->protocol = htons(ETH_P_80211_RAW);

    dev->stats.rx_packets++;
    dev->stats.rx_bytes += skb->len;
    netif_rx_ni(skb);
    continue;
   } else {
    if (!p80211_convert_to_ether(wlandev, skb))
     continue;
   }
  }
  dev_kfree_skb(skb);
 }
}
