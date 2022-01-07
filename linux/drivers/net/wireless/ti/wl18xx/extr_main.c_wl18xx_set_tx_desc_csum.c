
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1271_tx_hw_descr {int wl18xx_checksum_data; } ;
struct wl1271 {int dummy; } ;
struct sk_buff {scalar_t__ ip_summed; } ;
struct iphdr {int protocol; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 scalar_t__ WARN_ON (int) ;
 int checksum_param ;
 int skb_mac_header (struct sk_buff*) ;
 int skb_network_header (struct sk_buff*) ;

__attribute__((used)) static void wl18xx_set_tx_desc_csum(struct wl1271 *wl,
        struct wl1271_tx_hw_descr *desc,
        struct sk_buff *skb)
{
 u32 ip_hdr_offset;
 struct iphdr *ip_hdr;

 if (!checksum_param) {
  desc->wl18xx_checksum_data = 0;
  return;
 }

 if (skb->ip_summed != CHECKSUM_PARTIAL) {
  desc->wl18xx_checksum_data = 0;
  return;
 }

 ip_hdr_offset = skb_network_header(skb) - skb_mac_header(skb);
 if (WARN_ON(ip_hdr_offset >= (1<<7))) {
  desc->wl18xx_checksum_data = 0;
  return;
 }

 desc->wl18xx_checksum_data = ip_hdr_offset << 1;


 ip_hdr = (void *)skb_network_header(skb);
 desc->wl18xx_checksum_data |= (ip_hdr->protocol & 0x01);
}
