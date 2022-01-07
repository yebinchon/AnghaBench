
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct davinci_spi {int done; scalar_t__ rcount; int wcount; } ;


 int complete (int *) ;

__attribute__((used)) static void davinci_spi_dma_rx_callback(void *data)
{
 struct davinci_spi *dspi = (struct davinci_spi *)data;

 dspi->rcount = 0;

 if (!dspi->wcount && !dspi->rcount)
  complete(&dspi->done);
}
