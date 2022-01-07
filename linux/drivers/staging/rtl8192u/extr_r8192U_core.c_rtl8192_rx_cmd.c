
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ cb; } ;
struct rx_desc_819x_usb {int dummy; } ;
struct rtl8192_rx_info {struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct ieee80211_rx_stats {int noise; int freq; int rate; int signal; } ;


 int IEEE80211_24GHZ_BAND ;
 int RX_URB_SIZE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int query_rx_cmdpkt_desc_status (struct sk_buff*,struct ieee80211_rx_stats*) ;
 int rtl819xusb_process_received_packet (struct net_device*,struct ieee80211_rx_stats*) ;

__attribute__((used)) static void rtl8192_rx_cmd(struct sk_buff *skb)
{
 struct rtl8192_rx_info *info = (struct rtl8192_rx_info *)skb->cb;
 struct net_device *dev = info->dev;

 struct ieee80211_rx_stats stats = {
  .signal = 0,
  .noise = 0x100 - 98,
  .rate = 0,
  .freq = IEEE80211_24GHZ_BAND,
 };

 if ((skb->len >= (20 + sizeof(struct rx_desc_819x_usb))) && (skb->len < RX_URB_SIZE)) {
  query_rx_cmdpkt_desc_status(skb, &stats);




  rtl819xusb_process_received_packet(dev, &stats);

  dev_kfree_skb_any(skb);
 }
}
