
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int cb; int protocol; int pkt_type; int dev; } ;
struct rtllib_rx_stats {int dummy; } ;
struct rtllib_device {int dev; } ;


 int ETH_P_80211_RAW ;
 int PACKET_OTHERHOST ;
 int htons (int ) ;
 int memset (int ,int ,int) ;
 int netif_rx (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,size_t) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static inline void rtllib_monitor_rx(struct rtllib_device *ieee,
         struct sk_buff *skb,
         struct rtllib_rx_stats *rx_status,
         size_t hdr_length)
{
 skb->dev = ieee->dev;
 skb_reset_mac_header(skb);
 skb_pull(skb, hdr_length);
 skb->pkt_type = PACKET_OTHERHOST;
 skb->protocol = htons(ETH_P_80211_RAW);
 memset(skb->cb, 0, sizeof(skb->cb));
 netif_rx(skb);
}
