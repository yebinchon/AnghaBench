
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {int it_present; int it_len; scalar_t__ it_version; } ;
struct wilc_wfi_radiotap_cb_hdr {int rate; int tx_flags; TYPE_1__ hdr; } ;
struct wilc_wfi_mon_priv {struct net_device* real_ndev; } ;
struct sk_buff {int* data; scalar_t__ len; struct net_device* dev; struct wilc_wfi_radiotap_cb_hdr* cb; int protocol; int pkt_type; int ip_summed; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;


 int CHECKSUM_UNNECESSARY ;
 int EFAULT ;
 int ENOMEM ;
 int ETH_ALEN ;
 int ETH_P_802_2 ;
 int PACKET_OTHERHOST ;
 int TX_RADIOTAP_PRESENT ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int ether_addr_copy (int *,int*) ;
 int htons (int ) ;
 scalar_t__ ieee80211_get_radiotap_len (int*) ;
 scalar_t__ is_broadcast_ether_addr (int*) ;
 int memcmp (int *,int *,int) ;
 int memset (struct wilc_wfi_radiotap_cb_hdr*,int ,int) ;
 scalar_t__ mon_mgmt_tx (struct net_device*,int*,scalar_t__) ;
 int netdev_err (struct net_device*,char*) ;
 struct wilc_wfi_mon_priv* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;
 struct wilc_wfi_radiotap_cb_hdr* skb_push (struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,int*,scalar_t__) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 scalar_t__ wilc_mac_xmit (struct sk_buff*,struct net_device*) ;

__attribute__((used)) static netdev_tx_t wilc_wfi_mon_xmit(struct sk_buff *skb,
         struct net_device *dev)
{
 u32 rtap_len, ret = 0;
 struct wilc_wfi_mon_priv *mon_priv;
 struct sk_buff *skb2;
 struct wilc_wfi_radiotap_cb_hdr *cb_hdr;
 u8 srcadd[ETH_ALEN];
 u8 bssid[ETH_ALEN];

 mon_priv = netdev_priv(dev);
 if (!mon_priv)
  return -EFAULT;

 rtap_len = ieee80211_get_radiotap_len(skb->data);
 if (skb->len < rtap_len)
  return -1;

 skb_pull(skb, rtap_len);

 if (skb->data[0] == 0xc0 && is_broadcast_ether_addr(&skb->data[4])) {
  skb2 = dev_alloc_skb(skb->len + sizeof(*cb_hdr));
  if (!skb2)
   return -ENOMEM;

  skb_put_data(skb2, skb->data, skb->len);

  cb_hdr = skb_push(skb2, sizeof(*cb_hdr));
  memset(cb_hdr, 0, sizeof(struct wilc_wfi_radiotap_cb_hdr));

  cb_hdr->hdr.it_version = 0;

  cb_hdr->hdr.it_len = cpu_to_le16(sizeof(*cb_hdr));

  cb_hdr->hdr.it_present = cpu_to_le32(TX_RADIOTAP_PRESENT);

  cb_hdr->rate = 5;
  cb_hdr->tx_flags = 0x0004;

  skb2->dev = dev;
  skb_reset_mac_header(skb2);
  skb2->ip_summed = CHECKSUM_UNNECESSARY;
  skb2->pkt_type = PACKET_OTHERHOST;
  skb2->protocol = htons(ETH_P_802_2);
  memset(skb2->cb, 0, sizeof(skb2->cb));

  netif_rx(skb2);

  return 0;
 }
 skb->dev = mon_priv->real_ndev;

 ether_addr_copy(srcadd, &skb->data[10]);
 ether_addr_copy(bssid, &skb->data[16]);




 if (!(memcmp(srcadd, bssid, 6))) {
  ret = mon_mgmt_tx(mon_priv->real_ndev, skb->data, skb->len);
  if (ret)
   netdev_err(dev, "fail to mgmt tx\n");
  dev_kfree_skb(skb);
 } else {
  ret = wilc_mac_xmit(skb, mon_priv->real_ndev);
 }

 return ret;
}
