
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct davinci_spi {int done; int wcount; int rcount; scalar_t__ base; } ;
typedef int s32 ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ SPIINT ;
 int SPIINT_MASKINT ;
 int clear_io_bits (scalar_t__,int ) ;
 int complete (int *) ;
 int davinci_spi_process_events (struct davinci_spi*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t davinci_spi_irq(s32 irq, void *data)
{
 struct davinci_spi *dspi = data;
 int status;

 status = davinci_spi_process_events(dspi);
 if (unlikely(status != 0))
  clear_io_bits(dspi->base + SPIINT, SPIINT_MASKINT);

 if ((!dspi->rcount && !dspi->wcount) || status)
  complete(&dspi->done);

 return IRQ_HANDLED;
}
