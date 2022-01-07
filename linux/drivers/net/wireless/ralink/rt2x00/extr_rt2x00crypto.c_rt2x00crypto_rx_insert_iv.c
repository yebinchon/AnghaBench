
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct rxdone_entry_desc {unsigned int size; int cipher; int dev_flags; int flags; int icv; int * iv; } ;


 unsigned int ALIGN_SIZE (struct sk_buff*,unsigned int) ;




 int RXDONE_L2PAD ;
 int RX_FLAG_IV_STRIPPED ;
 int memcpy (scalar_t__,int *,int) ;
 int memmove (scalar_t__,scalar_t__,unsigned int) ;
 int skb_push (struct sk_buff*,unsigned int) ;
 int skb_put (struct sk_buff*,unsigned int) ;
 int skb_trim (struct sk_buff*,unsigned int) ;

void rt2x00crypto_rx_insert_iv(struct sk_buff *skb,
          unsigned int header_length,
          struct rxdone_entry_desc *rxdesc)
{
 unsigned int payload_len = rxdesc->size - header_length;
 unsigned int align = ALIGN_SIZE(skb, header_length);
 unsigned int iv_len;
 unsigned int icv_len;
 unsigned int transfer = 0;






 switch (rxdesc->cipher) {
 case 128:
 case 129:
  iv_len = 4;
  icv_len = 4;
  break;
 case 130:
  iv_len = 8;
  icv_len = 4;
  break;
 case 131:
  iv_len = 8;
  icv_len = 8;
  break;
 default:

  return;
 }
 if (rxdesc->dev_flags & RXDONE_L2PAD) {
  skb_push(skb, iv_len - align);
  skb_put(skb, icv_len);


  memmove(skb->data + transfer,
   skb->data + transfer + (iv_len - align),
   header_length);
  transfer += header_length;
 } else {
  skb_push(skb, iv_len + align);
  if (align < icv_len)
   skb_put(skb, icv_len - align);
  else if (align > icv_len)
   skb_trim(skb, rxdesc->size + iv_len + icv_len);


  memmove(skb->data + transfer,
   skb->data + transfer + iv_len + align,
   header_length);
  transfer += header_length;
 }


 memcpy(skb->data + transfer, rxdesc->iv, iv_len);
 transfer += iv_len;





 if (!(rxdesc->dev_flags & RXDONE_L2PAD)) {
  memmove(skb->data + transfer,
   skb->data + transfer + align,
   payload_len);
 }






 transfer += payload_len;







 memcpy(skb->data + transfer, &rxdesc->icv, 4);
 transfer += icv_len;


 rxdesc->size = transfer;
 rxdesc->flags &= ~RX_FLAG_IV_STRIPPED;
}
