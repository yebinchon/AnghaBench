
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_ep {int maxpacket; } ;
struct sk_buff {int len; } ;
struct gether {struct usb_ep* in_ep; } ;


 int EEM_HLEN ;
 int ETH_FCS_LEN ;
 int GFP_ATOMIC ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int put_unaligned_be32 (int,int ) ;
 int put_unaligned_le16 (int,int ) ;
 int skb_cloned (struct sk_buff*) ;
 struct sk_buff* skb_copy_expand (struct sk_buff*,int,int,int ) ;
 int skb_headroom (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *eem_wrap(struct gether *port, struct sk_buff *skb)
{
 struct sk_buff *skb2 = ((void*)0);
 struct usb_ep *in = port->in_ep;
 int headroom, tailroom, padlen = 0;
 u16 len;

 if (!skb)
  return ((void*)0);

 len = skb->len;
 headroom = skb_headroom(skb);
 tailroom = skb_tailroom(skb);




 if (((len + EEM_HLEN + ETH_FCS_LEN) % in->maxpacket) == 0)
  padlen += 2;

 if ((tailroom >= (ETH_FCS_LEN + padlen)) &&
   (headroom >= EEM_HLEN) && !skb_cloned(skb))
  goto done;

 skb2 = skb_copy_expand(skb, EEM_HLEN, ETH_FCS_LEN + padlen, GFP_ATOMIC);
 dev_kfree_skb_any(skb);
 skb = skb2;
 if (!skb)
  return skb;

done:

 put_unaligned_be32(0xdeadbeef, skb_put(skb, 4));






 len = skb->len;
 put_unaligned_le16(len & 0x3FFF, skb_push(skb, 2));


 if (padlen)
  put_unaligned_le16(0, skb_put(skb, 2));

 return skb;
}
