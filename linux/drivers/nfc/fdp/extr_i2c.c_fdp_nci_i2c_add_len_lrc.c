
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int len; int* data; } ;


 scalar_t__ skb_push (struct sk_buff*,int) ;
 int skb_put_u8 (struct sk_buff*,int) ;

__attribute__((used)) static void fdp_nci_i2c_add_len_lrc(struct sk_buff *skb)
{
 u8 lrc = 0;
 u16 len, i;


 len = skb->len;
 *(u8 *)skb_push(skb, 1) = len & 0xff;
 *(u8 *)skb_push(skb, 1) = len >> 8;


 for (i = 0; i < len + 2; i++)
  lrc ^= skb->data[i];

 skb_put_u8(skb, lrc);
}
