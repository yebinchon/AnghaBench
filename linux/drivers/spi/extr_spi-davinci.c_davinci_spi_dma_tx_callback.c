
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct davinci_spi {int done; int rcount; scalar_t__ wcount; } ;


 int complete (int *) ;

__attribute__((used)) static void davinci_spi_dma_tx_callback(void *data)
{
 struct davinci_spi *dspi = (struct davinci_spi *)data;

 dspi->wcount = 0;

 if (!dspi->wcount && !dspi->rcount)
  complete(&dspi->done);
}
