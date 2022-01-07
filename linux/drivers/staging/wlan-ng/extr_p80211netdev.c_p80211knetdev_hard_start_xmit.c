
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union p80211_hdr {int * data; } ;
struct wlandevice {scalar_t__ state; int macmode; int (* txframe ) (struct wlandevice*,struct sk_buff*,union p80211_hdr*,union p80211_hdr*) ;int netdev; int ethconv; } ;
struct sk_buff {int * data; scalar_t__ len; int protocol; } ;
struct p80211_metawep {int * data; } ;
struct TYPE_2__ {int tx_bytes; int tx_packets; int tx_dropped; } ;
struct net_device {TYPE_1__ stats; struct wlandevice* ml_priv; } ;
typedef int p80211_wep ;
typedef int p80211_hdr ;
typedef int netdev_tx_t ;


 int CAP_NET_ADMIN ;
 scalar_t__ ETH_P_80211_RAW ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 scalar_t__ WLAN_DEVICE_OPEN ;



 scalar_t__ be16_to_cpu (int ) ;
 int capable (int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int kzfree (int *) ;
 int memcpy (union p80211_hdr*,int *,int) ;
 int memset (union p80211_hdr*,int ,int) ;
 int netdev_dbg (struct net_device*,char*,...) ;
 int netdev_notice (struct net_device*,char*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_start_queue (int ) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int netif_wake_queue (int ) ;
 scalar_t__ skb_ether_to_p80211 (struct wlandevice*,int ,struct sk_buff*,union p80211_hdr*,union p80211_hdr*) ;
 int skb_pull (struct sk_buff*,int) ;
 int stub1 (struct wlandevice*,struct sk_buff*,union p80211_hdr*,union p80211_hdr*) ;

__attribute__((used)) static netdev_tx_t p80211knetdev_hard_start_xmit(struct sk_buff *skb,
       struct net_device *netdev)
{
 int result = 0;
 int txresult = -1;
 struct wlandevice *wlandev = netdev->ml_priv;
 union p80211_hdr p80211_hdr;
 struct p80211_metawep p80211_wep;

 p80211_wep.data = ((void*)0);

 if (!skb)
  return NETDEV_TX_OK;

 if (wlandev->state != WLAN_DEVICE_OPEN) {
  result = 1;
  goto failed;
 }

 memset(&p80211_hdr, 0, sizeof(p80211_hdr));
 memset(&p80211_wep, 0, sizeof(p80211_wep));

 if (netif_queue_stopped(netdev)) {
  netdev_dbg(netdev, "called when queue stopped.\n");
  result = 1;
  goto failed;
 }

 netif_stop_queue(netdev);


 switch (wlandev->macmode) {
 case 128:
 case 129:
 case 130:
  break;
 default:




  if (be16_to_cpu(skb->protocol) != ETH_P_80211_RAW) {
   netif_start_queue(wlandev->netdev);
   netdev_notice(netdev, "Tx attempt prior to association, frame dropped.\n");
   netdev->stats.tx_dropped++;
   result = 0;
   goto failed;
  }
  break;
 }


 if (be16_to_cpu(skb->protocol) == ETH_P_80211_RAW) {
  if (!capable(CAP_NET_ADMIN)) {
   result = 1;
   goto failed;
  }

  memcpy(&p80211_hdr, skb->data, sizeof(p80211_hdr));
  skb_pull(skb, sizeof(p80211_hdr));
 } else {
  if (skb_ether_to_p80211
      (wlandev, wlandev->ethconv, skb, &p80211_hdr,
       &p80211_wep) != 0) {

   netdev_dbg(netdev, "ether_to_80211(%d) failed.\n",
       wlandev->ethconv);
   result = 1;
   goto failed;
  }
 }
 if (!wlandev->txframe) {
  result = 1;
  goto failed;
 }

 netif_trans_update(netdev);

 netdev->stats.tx_packets++;

 netdev->stats.tx_bytes += skb->len;

 txresult = wlandev->txframe(wlandev, skb, &p80211_hdr, &p80211_wep);

 if (txresult == 0) {


  netif_wake_queue(wlandev->netdev);
  result = NETDEV_TX_OK;
 } else if (txresult == 1) {

  netdev_dbg(netdev, "txframe success, no more bufs\n");


  result = NETDEV_TX_OK;
 } else if (txresult == 2) {

  netdev_dbg(netdev, "txframe returned alloc_fail\n");
  result = NETDEV_TX_BUSY;
 } else {

  netdev_dbg(netdev, "txframe returned full or busy\n");
  result = NETDEV_TX_BUSY;
 }

failed:

 if ((p80211_wep.data) && (p80211_wep.data != skb->data))
  kzfree(p80211_wep.data);


 if (!result)
  dev_kfree_skb(skb);

 return result;
}
