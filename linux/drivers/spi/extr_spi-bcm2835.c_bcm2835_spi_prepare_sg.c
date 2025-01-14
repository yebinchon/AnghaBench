
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int nents; struct scatterlist* sgl; } ;
struct TYPE_3__ {unsigned int nents; struct scatterlist* sgl; } ;
struct spi_transfer {scalar_t__ rx_buf; TYPE_2__ rx_sg; TYPE_1__ tx_sg; } ;
struct spi_device {int chip_select; } ;
struct spi_controller {struct dma_chan* dma_rx; struct dma_chan* dma_tx; } ;
struct scatterlist {int dummy; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {struct spi_controller* callback_param; int callback; } ;
struct bcm2835_spi {int chip_select; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef int dma_cookie_t ;


 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 unsigned long DMA_PREP_INTERRUPT ;
 int EINVAL ;
 int bcm2835_spi_dma_rx_done ;
 int bcm2835_spi_dma_tx_done ;
 int dma_submit_error (int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (struct dma_chan*,struct scatterlist*,unsigned int,int,unsigned long) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;

__attribute__((used)) static int bcm2835_spi_prepare_sg(struct spi_controller *ctlr,
      struct spi_device *spi,
      struct spi_transfer *tfr,
      struct bcm2835_spi *bs,
      bool is_tx)
{
 struct dma_chan *chan;
 struct scatterlist *sgl;
 unsigned int nents;
 enum dma_transfer_direction dir;
 unsigned long flags;

 struct dma_async_tx_descriptor *desc;
 dma_cookie_t cookie;

 if (is_tx) {
  dir = DMA_MEM_TO_DEV;
  chan = ctlr->dma_tx;
  nents = tfr->tx_sg.nents;
  sgl = tfr->tx_sg.sgl;
  flags = tfr->rx_buf ? 0 : DMA_PREP_INTERRUPT;
 } else {
  dir = DMA_DEV_TO_MEM;
  chan = ctlr->dma_rx;
  nents = tfr->rx_sg.nents;
  sgl = tfr->rx_sg.sgl;
  flags = DMA_PREP_INTERRUPT;
 }

 desc = dmaengine_prep_slave_sg(chan, sgl, nents, dir, flags);
 if (!desc)
  return -EINVAL;





 if (!is_tx) {
  desc->callback = bcm2835_spi_dma_rx_done;
  desc->callback_param = ctlr;
 } else if (!tfr->rx_buf) {
  desc->callback = bcm2835_spi_dma_tx_done;
  desc->callback_param = ctlr;
  bs->chip_select = spi->chip_select;
 }


 cookie = dmaengine_submit(desc);

 return dma_submit_error(cookie);
}
