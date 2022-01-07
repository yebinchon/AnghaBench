
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int req_cons; TYPE_1__* sring; } ;
struct xenvif_queue {scalar_t__ stalled; TYPE_2__ rx; } ;
struct TYPE_3__ {int req_prod; } ;
typedef int RING_IDX ;



__attribute__((used)) static bool xenvif_rx_queue_ready(struct xenvif_queue *queue)
{
 RING_IDX prod, cons;

 prod = queue->rx.sring->req_prod;
 cons = queue->rx.req_cons;

 return queue->stalled && prod - cons >= 1;
}
