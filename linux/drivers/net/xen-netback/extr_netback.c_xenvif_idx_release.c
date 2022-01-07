
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u16 ;
struct xenvif_queue {size_t* pending_ring; int response_lock; int pending_prod; struct pending_tx_info* pending_tx_info; } ;
struct pending_tx_info {int extra_count; int req; } ;
typedef size_t pending_ring_idx_t ;


 int make_tx_response (struct xenvif_queue*,int *,int ,int ) ;
 size_t pending_index (int ) ;
 int push_tx_responses (struct xenvif_queue*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void xenvif_idx_release(struct xenvif_queue *queue, u16 pending_idx,
          u8 status)
{
 struct pending_tx_info *pending_tx_info;
 pending_ring_idx_t index;
 unsigned long flags;

 pending_tx_info = &queue->pending_tx_info[pending_idx];

 spin_lock_irqsave(&queue->response_lock, flags);

 make_tx_response(queue, &pending_tx_info->req,
    pending_tx_info->extra_count, status);





 index = pending_index(queue->pending_prod++);
 queue->pending_ring[index] = pending_idx;

 push_tx_responses(queue);

 spin_unlock_irqrestore(&queue->response_lock, flags);
}
