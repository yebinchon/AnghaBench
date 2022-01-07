
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int len; int* data; } ;


 scalar_t__ skb_push (struct sk_buff*,int) ;
 int skb_put_u8 (struct sk_buff*,int) ;

__attribute__((used)) static void microread_i2c_add_len_crc(struct sk_buff *skb)
{
 int i;
 u8 crc = 0;
 int len;

 len = skb->len;
 *(u8 *)skb_push(skb, 1) = len;

 for (i = 0; i < skb->len; i++)
  crc = crc ^ skb->data[i];

 skb_put_u8(skb, crc);
}
