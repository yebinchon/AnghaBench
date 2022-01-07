
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int cb; int protocol; int pkt_type; int dev; scalar_t__ data; } ;
struct rtl_80211_hdr_4addr {int frame_ctl; } ;
struct ieee80211_rx_stats {int dummy; } ;
struct ieee80211_device {int dev; } ;


 int ETH_P_80211_RAW ;
 int PACKET_OTHERHOST ;
 int htons (int ) ;
 int ieee80211_get_hdrlen (int ) ;
 int le16_to_cpu (int ) ;
 int memset (int ,int ,int) ;
 int netif_rx (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static inline void ieee80211_monitor_rx(struct ieee80211_device *ieee,
     struct sk_buff *skb,
     struct ieee80211_rx_stats *rx_stats)
{
 struct rtl_80211_hdr_4addr *hdr = (struct rtl_80211_hdr_4addr *)skb->data;
 u16 fc = le16_to_cpu(hdr->frame_ctl);

 skb->dev = ieee->dev;
 skb_reset_mac_header(skb);

 skb_pull(skb, ieee80211_get_hdrlen(fc));
 skb->pkt_type = PACKET_OTHERHOST;
 skb->protocol = htons(ETH_P_80211_RAW);
 memset(skb->cb, 0, sizeof(skb->cb));
 netif_rx(skb);
}
