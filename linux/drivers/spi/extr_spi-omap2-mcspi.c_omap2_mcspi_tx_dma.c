
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nents; int sgl; } ;
struct spi_transfer {TYPE_1__ tx_sg; } ;
struct spi_device {size_t chip_select; int master; } ;
struct omap2_mcspi_dma {scalar_t__ dma_tx; } ;
struct omap2_mcspi {struct omap2_mcspi_dma* dma_channels; } ;
struct dma_slave_config {int dummy; } ;
struct dma_async_tx_descriptor {struct spi_device* callback_param; int callback; } ;


 int DMA_CTRL_ACK ;
 int DMA_MEM_TO_DEV ;
 int DMA_PREP_INTERRUPT ;
 int dma_async_issue_pending (scalar_t__) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (scalar_t__,int ,int ,int ,int) ;
 int dmaengine_slave_config (scalar_t__,struct dma_slave_config*) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int omap2_mcspi_set_dma_req (struct spi_device*,int ,int) ;
 int omap2_mcspi_tx_callback ;
 struct omap2_mcspi* spi_master_get_devdata (int ) ;

__attribute__((used)) static void omap2_mcspi_tx_dma(struct spi_device *spi,
    struct spi_transfer *xfer,
    struct dma_slave_config cfg)
{
 struct omap2_mcspi *mcspi;
 struct omap2_mcspi_dma *mcspi_dma;

 mcspi = spi_master_get_devdata(spi->master);
 mcspi_dma = &mcspi->dma_channels[spi->chip_select];

 if (mcspi_dma->dma_tx) {
  struct dma_async_tx_descriptor *tx;

  dmaengine_slave_config(mcspi_dma->dma_tx, &cfg);

  tx = dmaengine_prep_slave_sg(mcspi_dma->dma_tx, xfer->tx_sg.sgl,
          xfer->tx_sg.nents,
          DMA_MEM_TO_DEV,
          DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
  if (tx) {
   tx->callback = omap2_mcspi_tx_callback;
   tx->callback_param = spi;
   dmaengine_submit(tx);
  } else {

  }
 }
 dma_async_issue_pending(mcspi_dma->dma_tx);
 omap2_mcspi_set_dma_req(spi, 0, 1);

}
