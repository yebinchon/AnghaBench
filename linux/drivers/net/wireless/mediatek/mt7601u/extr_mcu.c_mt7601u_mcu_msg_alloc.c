
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ MT_DMA_HDR_LEN ;
 int WARN_ON (int) ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int skb_put_data (struct sk_buff*,void const*,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static struct sk_buff *mt7601u_mcu_msg_alloc(const void *data, int len)
{
 struct sk_buff *skb;

 WARN_ON(len % 4);

 skb = alloc_skb(len + MT_DMA_HDR_LEN + 4, GFP_KERNEL);
 if (skb) {
  skb_reserve(skb, MT_DMA_HDR_LEN);
  skb_put_data(skb, data, len);
 }

 return skb;
}
