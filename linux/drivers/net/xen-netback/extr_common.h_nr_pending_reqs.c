
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif_queue {scalar_t__ pending_cons; scalar_t__ pending_prod; } ;
typedef scalar_t__ pending_ring_idx_t ;


 scalar_t__ MAX_PENDING_REQS ;

__attribute__((used)) static inline pending_ring_idx_t nr_pending_reqs(struct xenvif_queue *queue)
{
 return MAX_PENDING_REQS -
  queue->pending_prod + queue->pending_cons;
}
