
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct port100 {scalar_t__ skb_headroom; scalar_t__ skb_tailroom; } ;


 int GFP_KERNEL ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static struct sk_buff *port100_alloc_skb(struct port100 *dev, unsigned int size)
{
 struct sk_buff *skb;

 skb = alloc_skb(dev->skb_headroom + dev->skb_tailroom + size,
   GFP_KERNEL);
 if (skb)
  skb_reserve(skb, dev->skb_headroom);

 return skb;
}
