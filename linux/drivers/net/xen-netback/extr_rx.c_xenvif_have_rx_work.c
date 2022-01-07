
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xenvif_queue {TYPE_1__* vif; } ;
struct TYPE_2__ {scalar_t__ disabled; scalar_t__ stall_timeout; } ;


 scalar_t__ kthread_should_stop () ;
 scalar_t__ xenvif_rx_queue_ready (struct xenvif_queue*) ;
 scalar_t__ xenvif_rx_queue_stalled (struct xenvif_queue*) ;
 scalar_t__ xenvif_rx_ring_slots_available (struct xenvif_queue*) ;

__attribute__((used)) static bool xenvif_have_rx_work(struct xenvif_queue *queue)
{
 return xenvif_rx_ring_slots_available(queue) ||
  (queue->vif->stall_timeout &&
   (xenvif_rx_queue_stalled(queue) ||
    xenvif_rx_queue_ready(queue))) ||
  kthread_should_stop() ||
  queue->vif->disabled;
}
