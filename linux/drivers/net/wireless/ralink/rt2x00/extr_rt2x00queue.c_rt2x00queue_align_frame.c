
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; scalar_t__ data; } ;


 unsigned int ALIGN_SIZE (struct sk_buff*,int ) ;
 int memmove (scalar_t__,scalar_t__,unsigned int) ;
 int skb_push (struct sk_buff*,unsigned int) ;
 int skb_trim (struct sk_buff*,unsigned int) ;

void rt2x00queue_align_frame(struct sk_buff *skb)
{
 unsigned int frame_length = skb->len;
 unsigned int align = ALIGN_SIZE(skb, 0);

 if (!align)
  return;

 skb_push(skb, align);
 memmove(skb->data, skb->data + align, frame_length);
 skb_trim(skb, frame_length);
}
