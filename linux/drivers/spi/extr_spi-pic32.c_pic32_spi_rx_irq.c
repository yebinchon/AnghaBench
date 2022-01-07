
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic32_spi {scalar_t__ rx_end; scalar_t__ rx; int xfer_done; int rx_irq; int fault_irq; int (* rx_fifo ) (struct pic32_spi*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;
 int disable_irq_nosync (int ) ;
 int stub1 (struct pic32_spi*) ;

__attribute__((used)) static irqreturn_t pic32_spi_rx_irq(int irq, void *dev_id)
{
 struct pic32_spi *pic32s = dev_id;

 pic32s->rx_fifo(pic32s);


 if (pic32s->rx_end == pic32s->rx) {

  disable_irq_nosync(pic32s->fault_irq);
  disable_irq_nosync(pic32s->rx_irq);


  complete(&pic32s->xfer_done);
 }

 return IRQ_HANDLED;
}
