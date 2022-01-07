
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; unsigned char* data; scalar_t__ mac_len; } ;


 unsigned char DLE_FLAG ;
 unsigned char bitrev8 (int ) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int memcpy (int ,int ,scalar_t__) ;
 int skb_mac_header (struct sk_buff*) ;
 int skb_put_u8 (struct sk_buff*,unsigned char) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *iraw_encode(struct sk_buff *skb)
{
 struct sk_buff *iraw_skb;
 unsigned char c;
 unsigned char *cp;
 int len;




 iraw_skb = dev_alloc_skb(2 * skb->len + skb->mac_len);
 if (!iraw_skb) {
  dev_kfree_skb_any(skb);
  return ((void*)0);
 }


 skb_reset_mac_header(iraw_skb);
 skb_reserve(iraw_skb, skb->mac_len);
 memcpy(skb_mac_header(iraw_skb), skb_mac_header(skb), skb->mac_len);
 iraw_skb->mac_len = skb->mac_len;


 cp = skb->data;
 len = skb->len;
 while (len--) {
  c = bitrev8(*cp++);
  if (c == DLE_FLAG)
   skb_put_u8(iraw_skb, c);
  skb_put_u8(iraw_skb, c);
 }
 dev_kfree_skb_any(skb);
 return iraw_skb;
}
