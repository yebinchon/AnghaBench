
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct sk_buff {scalar_t__ cb; } ;
struct rtl8192_rx_info {int out_pipe; struct net_device* dev; struct urb* urb; } ;
struct r8192_priv {int rx_queue; int udev; } ;
struct net_device {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ MAX_RX_URB ;
 int RX_URB_SIZE ;
 struct sk_buff* __dev_alloc_skb (int ,int ) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int kfree_skb (struct sk_buff*) ;
 int rtl8192_rx_isr ;
 scalar_t__ skb_queue_len (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_tail_pointer (struct sk_buff*) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,int ,int ,int ,struct sk_buff*) ;
 int usb_rcvbulkpipe (int ,int) ;
 int usb_submit_urb (struct urb*,int ) ;

void rtl8192_rx_enable(struct net_device *dev)
{
 struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 struct urb *entry;
 struct sk_buff *skb;
 struct rtl8192_rx_info *info;


 while (skb_queue_len(&priv->rx_queue) < MAX_RX_URB) {
  skb = __dev_alloc_skb(RX_URB_SIZE, GFP_KERNEL);
  if (!skb)
   break;
  entry = usb_alloc_urb(0, GFP_KERNEL);
  if (!entry) {
   kfree_skb(skb);
   break;
  }
  usb_fill_bulk_urb(entry, priv->udev,
      usb_rcvbulkpipe(priv->udev, 3),
      skb_tail_pointer(skb),
      RX_URB_SIZE, rtl8192_rx_isr, skb);
  info = (struct rtl8192_rx_info *)skb->cb;
  info->urb = entry;
  info->dev = dev;
  info->out_pipe = 3;
  skb_queue_tail(&priv->rx_queue, skb);
  usb_submit_urb(entry, GFP_KERNEL);
 }


 while (skb_queue_len(&priv->rx_queue) < MAX_RX_URB + 3) {
  skb = __dev_alloc_skb(RX_URB_SIZE, GFP_KERNEL);
  if (!skb)
   break;
  entry = usb_alloc_urb(0, GFP_KERNEL);
  if (!entry) {
   kfree_skb(skb);
   break;
  }
  usb_fill_bulk_urb(entry, priv->udev,
      usb_rcvbulkpipe(priv->udev, 9),
      skb_tail_pointer(skb),
      RX_URB_SIZE, rtl8192_rx_isr, skb);
  info = (struct rtl8192_rx_info *)skb->cb;
  info->urb = entry;
  info->dev = dev;
  info->out_pipe = 9;
  skb_queue_tail(&priv->rx_queue, skb);
  usb_submit_urb(entry, GFP_KERNEL);
 }
}
