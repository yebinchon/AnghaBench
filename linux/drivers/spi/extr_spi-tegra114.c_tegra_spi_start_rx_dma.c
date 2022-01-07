
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_spi_data {int rx_dma_chan; TYPE_1__* rx_dma_desc; int rx_dma_complete; int dev; int rx_dma_phys; } ;
struct TYPE_3__ {int * callback_param; int callback; } ;


 int DMA_CTRL_ACK ;
 int DMA_DEV_TO_MEM ;
 int DMA_PREP_INTERRUPT ;
 int EIO ;
 int dev_err (int ,char*) ;
 int dma_async_issue_pending (int ) ;
 TYPE_1__* dmaengine_prep_slave_single (int ,int ,int,int ,int) ;
 int dmaengine_submit (TYPE_1__*) ;
 int reinit_completion (int *) ;
 int tegra_spi_dma_complete ;

__attribute__((used)) static int tegra_spi_start_rx_dma(struct tegra_spi_data *tspi, int len)
{
 reinit_completion(&tspi->rx_dma_complete);
 tspi->rx_dma_desc = dmaengine_prep_slave_single(tspi->rx_dma_chan,
    tspi->rx_dma_phys, len, DMA_DEV_TO_MEM,
    DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
 if (!tspi->rx_dma_desc) {
  dev_err(tspi->dev, "Not able to get desc for Rx\n");
  return -EIO;
 }

 tspi->rx_dma_desc->callback = tegra_spi_dma_complete;
 tspi->rx_dma_desc->callback_param = &tspi->rx_dma_complete;

 dmaengine_submit(tspi->rx_dma_desc);
 dma_async_issue_pending(tspi->rx_dma_chan);
 return 0;
}
