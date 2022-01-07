
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct rxdone_entry_desc {int dev_flags; int rssi; } ;
struct link_ant {int rssi_ant; } ;
struct link_qual {int rx_success; } ;
struct link {int avg_rssi; struct link_ant ant; struct link_qual qual; } ;
struct rt2x00_dev {int intf_sta_count; struct link link; } ;
struct ieee80211_hdr {int frame_control; } ;


 int RXDONE_MY_BSS ;
 int ewma_rssi_add (int *,int ) ;
 int ieee80211_is_beacon (int ) ;

void rt2x00link_update_stats(struct rt2x00_dev *rt2x00dev,
        struct sk_buff *skb,
        struct rxdone_entry_desc *rxdesc)
{
 struct link *link = &rt2x00dev->link;
 struct link_qual *qual = &rt2x00dev->link.qual;
 struct link_ant *ant = &rt2x00dev->link.ant;
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;




 if (!rt2x00dev->intf_sta_count)
  return;





 qual->rx_success++;






 if (!ieee80211_is_beacon(hdr->frame_control) ||
     !(rxdesc->dev_flags & RXDONE_MY_BSS))
  return;




 ewma_rssi_add(&link->avg_rssi, -rxdesc->rssi);




 ewma_rssi_add(&ant->rssi_ant, -rxdesc->rssi);
}
