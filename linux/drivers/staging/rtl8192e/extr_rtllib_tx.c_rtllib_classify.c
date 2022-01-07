
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct iphdr {int tos; } ;
struct ethhdr {scalar_t__ h_proto; } ;


 int DUMP_PREFIX_NONE ;
 int ETH_P_IP ;
 scalar_t__ htons (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int print_hex_dump_bytes (char*,int ,scalar_t__,int ) ;

__attribute__((used)) static int rtllib_classify(struct sk_buff *skb, u8 bIsAmsdu)
{
 struct ethhdr *eth;
 struct iphdr *ip;

 eth = (struct ethhdr *)skb->data;
 if (eth->h_proto != htons(ETH_P_IP))
  return 0;





 ip = ip_hdr(skb);
 switch (ip->tos & 0xfc) {
 case 0x20:
  return 2;
 case 0x40:
  return 1;
 case 0x60:
  return 3;
 case 0x80:
  return 4;
 case 0xa0:
  return 5;
 case 0xc0:
  return 6;
 case 0xe0:
  return 7;
 default:
  return 0;
 }
}
