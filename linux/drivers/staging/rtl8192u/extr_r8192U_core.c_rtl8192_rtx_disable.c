
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ cb; } ;
struct rtl8192_rx_info {int urb; } ;
struct r8192_priv {int skb_queue; int rx_queue; } ;
struct net_device {int dummy; } ;


 int CMDR ;
 int CR_RE ;
 int CR_TE ;
 struct sk_buff* __skb_dequeue (int *) ;
 int force_pci_posting (struct net_device*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int kfree_skb (struct sk_buff*) ;
 int mdelay (int) ;
 int netdev_warn (struct net_device*,char*) ;
 int read_nic_byte (struct net_device*,int ,int*) ;
 scalar_t__ skb_queue_len (int *) ;
 int skb_queue_purge (int *) ;
 int usb_kill_urb (int ) ;
 int write_nic_byte (struct net_device*,int ,int) ;

void rtl8192_rtx_disable(struct net_device *dev)
{
 u8 cmd;
 struct r8192_priv *priv = ieee80211_priv(dev);
 struct sk_buff *skb;
 struct rtl8192_rx_info *info;

 read_nic_byte(dev, CMDR, &cmd);
 write_nic_byte(dev, CMDR, cmd & ~(CR_TE | CR_RE));
 force_pci_posting(dev);
 mdelay(10);

 while ((skb = __skb_dequeue(&priv->rx_queue))) {
  info = (struct rtl8192_rx_info *)skb->cb;
  if (!info->urb)
   continue;

  usb_kill_urb(info->urb);
  kfree_skb(skb);
 }

 if (skb_queue_len(&priv->skb_queue))
  netdev_warn(dev, "skb_queue not empty\n");

 skb_queue_purge(&priv->skb_queue);
}
