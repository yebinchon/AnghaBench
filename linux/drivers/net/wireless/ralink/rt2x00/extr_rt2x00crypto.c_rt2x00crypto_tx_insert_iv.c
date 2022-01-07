
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_frame_desc {int flags; int * iv; } ;
struct sk_buff {scalar_t__ data; } ;


 int SKBDESC_IV_STRIPPED ;
 struct skb_frame_desc* get_skb_frame_desc (struct sk_buff*) ;
 int memcpy (scalar_t__,int *,unsigned int const) ;
 int memmove (scalar_t__,scalar_t__,unsigned int) ;
 int skb_push (struct sk_buff*,unsigned int const) ;

void rt2x00crypto_tx_insert_iv(struct sk_buff *skb, unsigned int header_length)
{
 struct skb_frame_desc *skbdesc = get_skb_frame_desc(skb);
 const unsigned int iv_len =
     ((!!(skbdesc->iv[0])) * 4) + ((!!(skbdesc->iv[1])) * 4);

 if (!(skbdesc->flags & SKBDESC_IV_STRIPPED))
  return;

 skb_push(skb, iv_len);


 memmove(skb->data, skb->data + iv_len, header_length);


 memcpy(skb->data + header_length, skbdesc->iv, iv_len);


 skbdesc->flags &= ~SKBDESC_IV_STRIPPED;
}
