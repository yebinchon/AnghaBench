
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int tx_zerocopy_fail; int tx_zerocopy_success; } ;
struct xenvif_queue {scalar_t__ dealloc_prod; scalar_t__ dealloc_cons; TYPE_1__ stats; int callback_lock; int * dealloc_ring; } ;
struct ubuf_info {scalar_t__ ctx; int desc; } ;
typedef size_t pending_ring_idx_t ;


 int BUG_ON (int) ;
 scalar_t__ MAX_PENDING_REQS ;
 scalar_t__ likely (int) ;
 size_t pending_index (scalar_t__) ;
 int smp_wmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct xenvif_queue* ubuf_to_queue (struct ubuf_info*) ;
 int xenvif_skb_zerocopy_complete (struct xenvif_queue*) ;

void xenvif_zerocopy_callback(struct ubuf_info *ubuf, bool zerocopy_success)
{
 unsigned long flags;
 pending_ring_idx_t index;
 struct xenvif_queue *queue = ubuf_to_queue(ubuf);




 spin_lock_irqsave(&queue->callback_lock, flags);
 do {
  u16 pending_idx = ubuf->desc;
  ubuf = (struct ubuf_info *) ubuf->ctx;
  BUG_ON(queue->dealloc_prod - queue->dealloc_cons >=
   MAX_PENDING_REQS);
  index = pending_index(queue->dealloc_prod);
  queue->dealloc_ring[index] = pending_idx;



  smp_wmb();
  queue->dealloc_prod++;
 } while (ubuf);
 spin_unlock_irqrestore(&queue->callback_lock, flags);

 if (likely(zerocopy_success))
  queue->stats.tx_zerocopy_success++;
 else
  queue->stats.tx_zerocopy_fail++;
 xenvif_skb_zerocopy_complete(queue);
}
