
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int xenvif_rx_interrupt (int,void*) ;
 int xenvif_tx_interrupt (int,void*) ;

irqreturn_t xenvif_interrupt(int irq, void *dev_id)
{
 xenvif_tx_interrupt(irq, dev_id);
 xenvif_rx_interrupt(irq, dev_id);

 return IRQ_HANDLED;
}
