
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; scalar_t__ data; } ;


 unsigned int L2PAD_SIZE (unsigned int) ;
 int memmove (scalar_t__,scalar_t__,unsigned int) ;
 int skb_push (struct sk_buff*,unsigned int) ;

void rt2x00queue_insert_l2pad(struct sk_buff *skb, unsigned int hdr_len)
{
 unsigned int l2pad = (skb->len > hdr_len) ? L2PAD_SIZE(hdr_len) : 0;

 if (!l2pad)
  return;

 skb_push(skb, l2pad);
 memmove(skb->data, skb->data + l2pad, hdr_len);
}
