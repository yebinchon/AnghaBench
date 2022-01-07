
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct rtllib_txb {int nr_frags; TYPE_1__** fragments; int frag_size; } ;
typedef int gfp_t ;
struct TYPE_3__ {struct rtllib_txb* cb; } ;


 int cpu_to_le16 (int) ;
 TYPE_1__* dev_alloc_skb (int) ;
 int dev_kfree_skb_any (TYPE_1__*) ;
 int kfree (struct rtllib_txb*) ;
 struct rtllib_txb* kmalloc (int,int ) ;
 int memset (struct rtllib_txb*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct rtllib_txb *rtllib_alloc_txb(int nr_frags, int txb_size,
        gfp_t gfp_mask)
{
 struct rtllib_txb *txb;
 int i;

 txb = kmalloc(sizeof(struct rtllib_txb) + (sizeof(u8 *) * nr_frags),
        gfp_mask);
 if (!txb)
  return ((void*)0);

 memset(txb, 0, sizeof(struct rtllib_txb));
 txb->nr_frags = nr_frags;
 txb->frag_size = cpu_to_le16(txb_size);

 for (i = 0; i < nr_frags; i++) {
  txb->fragments[i] = dev_alloc_skb(txb_size);
  if (unlikely(!txb->fragments[i])) {
   i--;
   break;
  }
  memset(txb->fragments[i]->cb, 0, sizeof(txb->fragments[i]->cb));
 }
 if (unlikely(i != nr_frags)) {
  while (i >= 0)
   dev_kfree_skb_any(txb->fragments[i--]);
  kfree(txb);
  return ((void*)0);
 }
 return txb;
}
