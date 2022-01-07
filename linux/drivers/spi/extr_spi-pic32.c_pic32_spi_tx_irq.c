
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic32_spi {scalar_t__ tx_end; scalar_t__ tx; int tx_irq; int (* tx_fifo ) (struct pic32_spi*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int disable_irq_nosync (int ) ;
 int stub1 (struct pic32_spi*) ;

__attribute__((used)) static irqreturn_t pic32_spi_tx_irq(int irq, void *dev_id)
{
 struct pic32_spi *pic32s = dev_id;

 pic32s->tx_fifo(pic32s);


 if (pic32s->tx_end == pic32s->tx)
  disable_irq_nosync(pic32s->tx_irq);

 return IRQ_HANDLED;
}
