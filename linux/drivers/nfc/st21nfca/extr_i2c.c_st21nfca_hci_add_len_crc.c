
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int len; int data; } ;


 int crc_ccitt (int,int ,int ) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 int skb_put_u8 (struct sk_buff*,int) ;

__attribute__((used)) static void st21nfca_hci_add_len_crc(struct sk_buff *skb)
{
 u16 crc;
 u8 tmp;

 *(u8 *)skb_push(skb, 1) = 0;

 crc = crc_ccitt(0xffff, skb->data, skb->len);
 crc = ~crc;

 tmp = crc & 0x00ff;
 skb_put_u8(skb, tmp);

 tmp = (crc >> 8) & 0x00ff;
 skb_put_u8(skb, tmp);
}
