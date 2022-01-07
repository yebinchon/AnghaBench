
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;


 int put_unaligned_le32 (int ,int ) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static inline void skb_put_le32(struct sk_buff *skb, u32 val)
{
 put_unaligned_le32(val, skb_put(skb, 4));
}
