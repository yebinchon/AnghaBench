
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct gether {int dummy; } ;
typedef int __le32 ;


 int EINVAL ;
 int EOVERFLOW ;
 int RNDIS_MSG_PACKET ;
 scalar_t__ cpu_to_le32 (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ get_unaligned (int ) ;
 scalar_t__ get_unaligned_le32 (int ) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;
 int skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int skb_trim (struct sk_buff*,scalar_t__) ;

int rndis_rm_hdr(struct gether *port,
   struct sk_buff *skb,
   struct sk_buff_head *list)
{

 __le32 *tmp = (void *)skb->data;


 if (cpu_to_le32(RNDIS_MSG_PACKET)
   != get_unaligned(tmp++)) {
  dev_kfree_skb_any(skb);
  return -EINVAL;
 }
 tmp++;


 if (!skb_pull(skb, get_unaligned_le32(tmp++) + 8)) {
  dev_kfree_skb_any(skb);
  return -EOVERFLOW;
 }
 skb_trim(skb, get_unaligned_le32(tmp++));

 skb_queue_tail(list, skb);
 return 0;
}
