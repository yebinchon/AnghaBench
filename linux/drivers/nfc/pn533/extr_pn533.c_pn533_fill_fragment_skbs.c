
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int len; int data; } ;
struct pn533 {int fragment_skb; int tgt_mode; } ;


 int PN533_CMD_DATAFRAME_MAXLEN ;
 int PN533_CMD_MI_MASK ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct sk_buff* pn533_alloc_skb (struct pn533*,int) ;
 int skb_pull (struct sk_buff*,int) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,int ,int) ;
 int skb_queue_len (int *) ;
 int skb_queue_purge (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static int pn533_fill_fragment_skbs(struct pn533 *dev, struct sk_buff *skb)
{
 struct sk_buff *frag;
 int frag_size;

 do {

  if (skb->len > PN533_CMD_DATAFRAME_MAXLEN)
   frag_size = PN533_CMD_DATAFRAME_MAXLEN;
  else
   frag_size = skb->len;


  frag = pn533_alloc_skb(dev, frag_size);
  if (!frag) {
   skb_queue_purge(&dev->fragment_skb);
   break;
  }

  if (!dev->tgt_mode) {

   skb_reserve(frag, 1);


   if (frag_size == PN533_CMD_DATAFRAME_MAXLEN)
    *(u8 *)skb_push(frag, sizeof(u8)) =
      (PN533_CMD_MI_MASK | 1);
   else
    *(u8 *)skb_push(frag, sizeof(u8)) = 1;
  }

  skb_put_data(frag, skb->data, frag_size);


  skb_pull(skb, frag_size);


  skb_queue_tail(&dev->fragment_skb, frag);

 } while (skb->len > 0);

 dev_kfree_skb(skb);

 return skb_queue_len(&dev->fragment_skb);
}
