
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_slink_data {int tx_dma_chan; TYPE_1__* tx_dma_desc; int tx_dma_complete; int dev; int tx_dma_phys; } ;
struct TYPE_3__ {int * callback_param; int callback; } ;


 int DMA_CTRL_ACK ;
 int DMA_MEM_TO_DEV ;
 int DMA_PREP_INTERRUPT ;
 int EIO ;
 int dev_err (int ,char*) ;
 int dma_async_issue_pending (int ) ;
 TYPE_1__* dmaengine_prep_slave_single (int ,int ,int,int ,int) ;
 int dmaengine_submit (TYPE_1__*) ;
 int reinit_completion (int *) ;
 int tegra_slink_dma_complete ;

__attribute__((used)) static int tegra_slink_start_tx_dma(struct tegra_slink_data *tspi, int len)
{
 reinit_completion(&tspi->tx_dma_complete);
 tspi->tx_dma_desc = dmaengine_prep_slave_single(tspi->tx_dma_chan,
    tspi->tx_dma_phys, len, DMA_MEM_TO_DEV,
    DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
 if (!tspi->tx_dma_desc) {
  dev_err(tspi->dev, "Not able to get desc for Tx\n");
  return -EIO;
 }

 tspi->tx_dma_desc->callback = tegra_slink_dma_complete;
 tspi->tx_dma_desc->callback_param = &tspi->tx_dma_complete;

 dmaengine_submit(tspi->tx_dma_desc);
 dma_async_issue_pending(tspi->tx_dma_chan);
 return 0;
}
