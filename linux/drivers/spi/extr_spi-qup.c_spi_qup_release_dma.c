
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dma_tx; int dma_rx; } ;


 int IS_ERR_OR_NULL (int ) ;
 int dma_release_channel (int ) ;

__attribute__((used)) static void spi_qup_release_dma(struct spi_master *master)
{
 if (!IS_ERR_OR_NULL(master->dma_rx))
  dma_release_channel(master->dma_rx);
 if (!IS_ERR_OR_NULL(master->dma_tx))
  dma_release_channel(master->dma_tx);
}
