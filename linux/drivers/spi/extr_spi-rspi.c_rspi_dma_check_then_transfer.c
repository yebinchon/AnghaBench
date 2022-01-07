
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_transfer {int rx_sg; scalar_t__ rx_buf; int tx_sg; } ;
struct rspi_data {TYPE_1__* ctlr; } ;
struct TYPE_2__ {int can_dma; } ;


 int EAGAIN ;
 int __rspi_can_dma (struct rspi_data*,struct spi_transfer*) ;
 int rspi_dma_transfer (struct rspi_data*,int *,int *) ;

__attribute__((used)) static int rspi_dma_check_then_transfer(struct rspi_data *rspi,
      struct spi_transfer *xfer)
{
 if (!rspi->ctlr->can_dma || !__rspi_can_dma(rspi, xfer))
  return -EAGAIN;


 return rspi_dma_transfer(rspi, &xfer->tx_sg,
    xfer->rx_buf ? &xfer->rx_sg : ((void*)0));
}
