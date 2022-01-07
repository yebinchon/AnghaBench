
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int * destructor_arg; } ;


 int GFP_ATOMIC ;
 scalar_t__ NET_IP_ALIGN ;
 scalar_t__ NET_SKB_PAD ;
 int __GFP_NOWARN ;
 struct sk_buff* alloc_skb (scalar_t__,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline struct sk_buff *xenvif_alloc_skb(unsigned int size)
{
 struct sk_buff *skb =
  alloc_skb(size + NET_SKB_PAD + NET_IP_ALIGN,
     GFP_ATOMIC | __GFP_NOWARN);
 if (unlikely(skb == ((void*)0)))
  return ((void*)0);


 skb_reserve(skb, NET_SKB_PAD + NET_IP_ALIGN);


 skb_shinfo(skb)->destructor_arg = ((void*)0);

 return skb;
}
