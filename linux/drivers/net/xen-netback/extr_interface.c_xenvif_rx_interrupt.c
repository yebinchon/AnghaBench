
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif_queue {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int xenvif_kick_thread (struct xenvif_queue*) ;

__attribute__((used)) static irqreturn_t xenvif_rx_interrupt(int irq, void *dev_id)
{
 struct xenvif_queue *queue = dev_id;

 xenvif_kick_thread(queue);

 return IRQ_HANDLED;
}
