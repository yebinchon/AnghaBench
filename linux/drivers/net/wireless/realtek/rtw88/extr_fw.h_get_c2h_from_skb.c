
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ data; scalar_t__ cb; } ;
struct rtw_c2h_cmd {int dummy; } ;



__attribute__((used)) static inline struct rtw_c2h_cmd *get_c2h_from_skb(struct sk_buff *skb)
{
 u32 pkt_offset;

 pkt_offset = *((u32 *)skb->cb);
 return (struct rtw_c2h_cmd *)(skb->data + pkt_offset);
}
