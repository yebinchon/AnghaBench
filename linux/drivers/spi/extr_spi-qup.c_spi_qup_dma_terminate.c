
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {scalar_t__ rx_buf; scalar_t__ tx_buf; } ;
struct spi_master {int dma_rx; int dma_tx; } ;


 int dmaengine_terminate_all (int ) ;

__attribute__((used)) static void spi_qup_dma_terminate(struct spi_master *master,
      struct spi_transfer *xfer)
{
 if (xfer->tx_buf)
  dmaengine_terminate_all(master->dma_tx);
 if (xfer->rx_buf)
  dmaengine_terminate_all(master->dma_rx);
}
