
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif_queue {int napi; int tx; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ RING_HAS_UNCONSUMED_REQUESTS (int *) ;
 int napi_schedule (int *) ;

__attribute__((used)) static irqreturn_t xenvif_tx_interrupt(int irq, void *dev_id)
{
 struct xenvif_queue *queue = dev_id;

 if (RING_HAS_UNCONSUMED_REQUESTS(&queue->tx))
  napi_schedule(&queue->napi);

 return IRQ_HANDLED;
}
