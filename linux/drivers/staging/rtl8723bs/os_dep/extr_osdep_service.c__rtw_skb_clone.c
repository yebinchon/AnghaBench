
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 scalar_t__ in_interrupt () ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;

inline struct sk_buff *_rtw_skb_clone(struct sk_buff *skb)
{
 return skb_clone(skb, in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
}
