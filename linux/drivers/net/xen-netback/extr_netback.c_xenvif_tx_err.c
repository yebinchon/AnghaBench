
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ req_cons; } ;
struct xenvif_queue {TYPE_1__ tx; int response_lock; } ;
struct xen_netif_tx_request {int dummy; } ;
typedef scalar_t__ RING_IDX ;


 int RING_COPY_REQUEST (TYPE_1__*,int ,struct xen_netif_tx_request*) ;
 int XEN_NETIF_RSP_ERROR ;
 int make_tx_response (struct xenvif_queue*,struct xen_netif_tx_request*,unsigned int,int ) ;
 int push_tx_responses (struct xenvif_queue*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void xenvif_tx_err(struct xenvif_queue *queue,
     struct xen_netif_tx_request *txp,
     unsigned int extra_count, RING_IDX end)
{
 RING_IDX cons = queue->tx.req_cons;
 unsigned long flags;

 do {
  spin_lock_irqsave(&queue->response_lock, flags);
  make_tx_response(queue, txp, extra_count, XEN_NETIF_RSP_ERROR);
  push_tx_responses(queue);
  spin_unlock_irqrestore(&queue->response_lock, flags);
  if (cons == end)
   break;
  RING_COPY_REQUEST(&queue->tx, cons++, txp);
  extra_count = 0;
 } while (1);
 queue->tx.req_cons = cons;
}
