
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct pn533 {TYPE_1__* ops; } ;
struct TYPE_2__ {int tx_header_len; scalar_t__ tx_tail_len; } ;


 int GFP_KERNEL ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int skb_reserve (struct sk_buff*,int ) ;

__attribute__((used)) static struct sk_buff *pn533_alloc_skb(struct pn533 *dev, unsigned int size)
{
 struct sk_buff *skb;

 skb = alloc_skb(dev->ops->tx_header_len +
   size +
   dev->ops->tx_tail_len, GFP_KERNEL);

 if (skb)
  skb_reserve(skb, dev->ops->tx_header_len);

 return skb;
}
