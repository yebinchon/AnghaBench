
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif_queue {scalar_t__ tx_irq; scalar_t__ rx_irq; int credit_timeout; int napi; } ;
struct xenvif {unsigned int num_queues; struct xenvif_queue* queues; } ;


 int del_timer_sync (int *) ;
 int disable_irq (scalar_t__) ;
 int napi_disable (int *) ;

__attribute__((used)) static void xenvif_down(struct xenvif *vif)
{
 struct xenvif_queue *queue = ((void*)0);
 unsigned int num_queues = vif->num_queues;
 unsigned int queue_index;

 for (queue_index = 0; queue_index < num_queues; ++queue_index) {
  queue = &vif->queues[queue_index];
  disable_irq(queue->tx_irq);
  if (queue->tx_irq != queue->rx_irq)
   disable_irq(queue->rx_irq);
  napi_disable(&queue->napi);
  del_timer_sync(&queue->credit_timeout);
 }
}
