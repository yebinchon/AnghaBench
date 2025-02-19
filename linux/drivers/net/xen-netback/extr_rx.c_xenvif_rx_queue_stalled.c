
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int req_cons; TYPE_1__* sring; } ;
struct xenvif_queue {TYPE_3__* vif; scalar_t__ last_rx_time; int stalled; TYPE_2__ rx; } ;
struct TYPE_6__ {scalar_t__ stall_timeout; } ;
struct TYPE_4__ {int req_prod; } ;
typedef int RING_IDX ;


 int jiffies ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static bool xenvif_rx_queue_stalled(struct xenvif_queue *queue)
{
 RING_IDX prod, cons;

 prod = queue->rx.sring->req_prod;
 cons = queue->rx.req_cons;

 return !queue->stalled &&
  prod - cons < 1 &&
  time_after(jiffies,
      queue->last_rx_time + queue->vif->stall_timeout);
}
