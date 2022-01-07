
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
typedef int __le16 ;
struct TYPE_2__ {int frame_control; } ;


 TYPE_1__* rtl_get_hdr (struct sk_buff*) ;

__attribute__((used)) static inline __le16 rtl_get_fc(struct sk_buff *skb)
{
 return rtl_get_hdr(skb)->frame_control;
}
