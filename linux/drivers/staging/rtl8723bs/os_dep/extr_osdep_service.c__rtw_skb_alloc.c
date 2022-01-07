
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;


 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 struct sk_buff* __dev_alloc_skb (int ,int ) ;
 scalar_t__ in_interrupt () ;

inline struct sk_buff *_rtw_skb_alloc(u32 sz)
{
 return __dev_alloc_skb(sz, in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
}
