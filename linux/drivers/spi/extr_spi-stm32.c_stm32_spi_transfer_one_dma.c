
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct stm32_spi {scalar_t__ cur_comm; int cur_usedma; TYPE_6__* cfg; int dev; int lock; scalar_t__ dma_rx; scalar_t__ dma_tx; scalar_t__ rx_buf; scalar_t__ tx_buf; } ;
struct TYPE_8__ {int nents; int sgl; } ;
struct TYPE_7__ {int nents; int sgl; } ;
struct spi_transfer {TYPE_2__ tx_sg; TYPE_1__ rx_sg; } ;
struct dma_slave_config {int direction; } ;
struct dma_async_tx_descriptor {struct stm32_spi* callback_param; int callback; } ;
struct TYPE_12__ {int (* transfer_one_irq ) (struct stm32_spi*) ;TYPE_5__* regs; int (* transfer_one_dma_start ) (struct stm32_spi*) ;int dma_tx_cb; int dma_rx_cb; } ;
struct TYPE_10__ {int mask; int reg; } ;
struct TYPE_9__ {int mask; int reg; } ;
struct TYPE_11__ {TYPE_4__ dma_rx_en; TYPE_3__ dma_tx_en; } ;


 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int DMA_PREP_INTERRUPT ;
 scalar_t__ SPI_3WIRE_TX ;
 scalar_t__ SPI_FULL_DUPLEX ;
 scalar_t__ SPI_SIMPLEX_TX ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int dma_async_issue_pending (scalar_t__) ;
 scalar_t__ dma_submit_error (int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (scalar_t__,int ,int ,int ,int ) ;
 int dmaengine_slave_config (scalar_t__,struct dma_slave_config*) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int dmaengine_terminate_all (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stm32_spi_clr_bits (struct stm32_spi*,int ,int ) ;
 int stm32_spi_dma_config (struct stm32_spi*,struct dma_slave_config*,int ) ;
 int stm32_spi_set_bits (struct stm32_spi*,int ,int ) ;
 int stub1 (struct stm32_spi*) ;
 int stub2 (struct stm32_spi*) ;

__attribute__((used)) static int stm32_spi_transfer_one_dma(struct stm32_spi *spi,
          struct spi_transfer *xfer)
{
 struct dma_slave_config tx_dma_conf, rx_dma_conf;
 struct dma_async_tx_descriptor *tx_dma_desc, *rx_dma_desc;
 unsigned long flags;

 spin_lock_irqsave(&spi->lock, flags);

 rx_dma_desc = ((void*)0);
 if (spi->rx_buf && spi->dma_rx) {
  stm32_spi_dma_config(spi, &rx_dma_conf, DMA_DEV_TO_MEM);
  dmaengine_slave_config(spi->dma_rx, &rx_dma_conf);


  stm32_spi_set_bits(spi, spi->cfg->regs->dma_rx_en.reg,
       spi->cfg->regs->dma_rx_en.mask);

  rx_dma_desc = dmaengine_prep_slave_sg(
     spi->dma_rx, xfer->rx_sg.sgl,
     xfer->rx_sg.nents,
     rx_dma_conf.direction,
     DMA_PREP_INTERRUPT);
 }

 tx_dma_desc = ((void*)0);
 if (spi->tx_buf && spi->dma_tx) {
  stm32_spi_dma_config(spi, &tx_dma_conf, DMA_MEM_TO_DEV);
  dmaengine_slave_config(spi->dma_tx, &tx_dma_conf);

  tx_dma_desc = dmaengine_prep_slave_sg(
     spi->dma_tx, xfer->tx_sg.sgl,
     xfer->tx_sg.nents,
     tx_dma_conf.direction,
     DMA_PREP_INTERRUPT);
 }

 if ((spi->tx_buf && spi->dma_tx && !tx_dma_desc) ||
     (spi->rx_buf && spi->dma_rx && !rx_dma_desc))
  goto dma_desc_error;

 if (spi->cur_comm == SPI_FULL_DUPLEX && (!tx_dma_desc || !rx_dma_desc))
  goto dma_desc_error;

 if (rx_dma_desc) {
  rx_dma_desc->callback = spi->cfg->dma_rx_cb;
  rx_dma_desc->callback_param = spi;

  if (dma_submit_error(dmaengine_submit(rx_dma_desc))) {
   dev_err(spi->dev, "Rx DMA submit failed\n");
   goto dma_desc_error;
  }

  dma_async_issue_pending(spi->dma_rx);
 }

 if (tx_dma_desc) {
  if (spi->cur_comm == SPI_SIMPLEX_TX ||
      spi->cur_comm == SPI_3WIRE_TX) {
   tx_dma_desc->callback = spi->cfg->dma_tx_cb;
   tx_dma_desc->callback_param = spi;
  }

  if (dma_submit_error(dmaengine_submit(tx_dma_desc))) {
   dev_err(spi->dev, "Tx DMA submit failed\n");
   goto dma_submit_error;
  }

  dma_async_issue_pending(spi->dma_tx);


  stm32_spi_set_bits(spi, spi->cfg->regs->dma_tx_en.reg,
       spi->cfg->regs->dma_tx_en.mask);
 }

 spi->cfg->transfer_one_dma_start(spi);

 spin_unlock_irqrestore(&spi->lock, flags);

 return 1;

dma_submit_error:
 if (spi->dma_rx)
  dmaengine_terminate_all(spi->dma_rx);

dma_desc_error:
 stm32_spi_clr_bits(spi, spi->cfg->regs->dma_rx_en.reg,
      spi->cfg->regs->dma_rx_en.mask);

 spin_unlock_irqrestore(&spi->lock, flags);

 dev_info(spi->dev, "DMA issue: fall back to irq transfer\n");

 spi->cur_usedma = 0;
 return spi->cfg->transfer_one_irq(spi);
}
