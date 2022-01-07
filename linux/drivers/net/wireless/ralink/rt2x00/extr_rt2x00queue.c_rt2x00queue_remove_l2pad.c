
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; int data; } ;


 unsigned int L2PAD_SIZE (unsigned int) ;
 int memmove (int ,int ,unsigned int) ;
 int skb_pull (struct sk_buff*,unsigned int) ;

void rt2x00queue_remove_l2pad(struct sk_buff *skb, unsigned int hdr_len)
{
 unsigned int l2pad = (skb->len > hdr_len) ? L2PAD_SIZE(hdr_len) : 0;

 if (!l2pad)
  return;

 memmove(skb->data + l2pad, skb->data, hdr_len);
 skb_pull(skb, l2pad);
}
