
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
typedef int u16 ;
struct sk_buff {int * data; } ;
struct iphdr {int tos; } ;
typedef int __be16 ;


 int ETH_ALEN ;
 int ETH_HLEN ;

 int be16_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;
 int * rtw_1d_to_queue ;

u16 rtw_recv_select_queue(struct sk_buff *skb)
{
 struct iphdr *piphdr;
 unsigned int dscp;
 __be16 eth_type;
 u32 priority;
 u8 *pdata = skb->data;

 memcpy(&eth_type, pdata + (ETH_ALEN << 1), 2);

 switch (be16_to_cpu(eth_type)) {
  case 128:

   piphdr = (struct iphdr *)(pdata + ETH_HLEN);

   dscp = piphdr->tos & 0xfc;

   priority = dscp >> 5;

   break;
  default:
   priority = 0;
 }

 return rtw_1d_to_queue[priority];
}
