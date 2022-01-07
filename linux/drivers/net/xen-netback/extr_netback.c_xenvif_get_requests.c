
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct xenvif_queue {scalar_t__* pending_ring; int pending_cons; } ;
struct xen_netif_tx_request {int dummy; } ;
struct skb_shared_info {unsigned int nr_frags; struct sk_buff* frag_list; int * frags; } ;
struct sk_buff {int dummy; } ;
struct gnttab_map_grant_ref {int dummy; } ;
typedef int skb_frag_t ;
typedef size_t pending_ring_idx_t ;
struct TYPE_2__ {scalar_t__ pending_idx; } ;


 TYPE_1__* XENVIF_TX_CB (struct sk_buff*) ;
 scalar_t__ frag_get_pending_idx (int *) ;
 int frag_set_pending_idx (int *,scalar_t__) ;
 size_t pending_index (int ) ;
 struct skb_shared_info* skb_shinfo (struct sk_buff*) ;
 int xenvif_tx_create_map_op (struct xenvif_queue*,scalar_t__,struct xen_netif_tx_request*,int ,struct gnttab_map_grant_ref*) ;

__attribute__((used)) static struct gnttab_map_grant_ref *xenvif_get_requests(struct xenvif_queue *queue,
       struct sk_buff *skb,
       struct xen_netif_tx_request *txp,
       struct gnttab_map_grant_ref *gop,
       unsigned int frag_overflow,
       struct sk_buff *nskb)
{
 struct skb_shared_info *shinfo = skb_shinfo(skb);
 skb_frag_t *frags = shinfo->frags;
 u16 pending_idx = XENVIF_TX_CB(skb)->pending_idx;
 int start;
 pending_ring_idx_t index;
 unsigned int nr_slots;

 nr_slots = shinfo->nr_frags;


 start = (frag_get_pending_idx(&shinfo->frags[0]) == pending_idx);

 for (shinfo->nr_frags = start; shinfo->nr_frags < nr_slots;
      shinfo->nr_frags++, txp++, gop++) {
  index = pending_index(queue->pending_cons++);
  pending_idx = queue->pending_ring[index];
  xenvif_tx_create_map_op(queue, pending_idx, txp, 0, gop);
  frag_set_pending_idx(&frags[shinfo->nr_frags], pending_idx);
 }

 if (frag_overflow) {

  shinfo = skb_shinfo(nskb);
  frags = shinfo->frags;

  for (shinfo->nr_frags = 0; shinfo->nr_frags < frag_overflow;
       shinfo->nr_frags++, txp++, gop++) {
   index = pending_index(queue->pending_cons++);
   pending_idx = queue->pending_ring[index];
   xenvif_tx_create_map_op(queue, pending_idx, txp, 0,
      gop);
   frag_set_pending_idx(&frags[shinfo->nr_frags],
          pending_idx);
  }

  skb_shinfo(skb)->frag_list = nskb;
 }

 return gop;
}
