
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct pkt_attrib {int ether_type; int priority; int subtype; int hdrlen; } ;
struct iphdr {int tos; } ;
typedef int ip_hdr ;


 int ETH_HLEN ;
 int ETH_P_PAE ;
 int WIFI_QOS_DATA_TYPE ;
 int WLAN_HDR_A3_QOS_LEN ;
 int skb_copy_bits (struct sk_buff*,int ,struct iphdr*,int) ;

__attribute__((used)) static void set_qos(struct sk_buff *skb, struct pkt_attrib *pattrib)
{
 if (pattrib->ether_type == 0x0800) {
  struct iphdr ip_hdr;

  skb_copy_bits(skb, ETH_HLEN, &ip_hdr, sizeof(ip_hdr));
  pattrib->priority = ip_hdr.tos >> 5;
 } else if (pattrib->ether_type == ETH_P_PAE) {




  pattrib->priority = 7;
 } else {
  pattrib->priority = 0;
 }

 pattrib->hdrlen = WLAN_HDR_A3_QOS_LEN;
 pattrib->subtype = WIFI_QOS_DATA_TYPE;
}
