
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;


 int rtl_get_hdr (struct sk_buff*) ;
 int rtl_get_tid_h (int ) ;

__attribute__((used)) static inline u16 rtl_get_tid(struct sk_buff *skb)
{
 return rtl_get_tid_h(rtl_get_hdr(skb));
}
