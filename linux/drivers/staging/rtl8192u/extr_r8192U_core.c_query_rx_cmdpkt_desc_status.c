
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct rx_desc_819x_usb {scalar_t__ Length; } ;
struct ieee80211_rx_stats {int ntotalfrag; scalar_t__ fragoffset; scalar_t__ packetlength; scalar_t__ fraglength; scalar_t__ Length; scalar_t__ RxBufShift; scalar_t__ RxDrvInfoSize; int * virtual_address; } ;


 scalar_t__ scrclng ;

__attribute__((used)) static void query_rx_cmdpkt_desc_status(struct sk_buff *skb,
     struct ieee80211_rx_stats *stats)
{
 struct rx_desc_819x_usb *desc = (struct rx_desc_819x_usb *)skb->data;


 stats->virtual_address = (u8 *)skb->data;
 stats->Length = desc->Length;
 stats->RxDrvInfoSize = 0;
 stats->RxBufShift = 0;
 stats->packetlength = stats->Length - scrclng;
 stats->fraglength = stats->packetlength;
 stats->fragoffset = 0;
 stats->ntotalfrag = 1;
}
