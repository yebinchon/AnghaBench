
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nents; int sgl; } ;
struct TYPE_3__ {int nents; int sgl; } ;
struct spi_transfer {TYPE_2__ tx_sg; scalar_t__ tx_buf; TYPE_1__ rx_sg; scalar_t__ rx_buf; } ;
struct spi_master {int dma_tx; int dma_rx; } ;
struct rockchip_spi {int fifo_len; int state; int n_bytes; int dma_addr_tx; int dma_addr_rx; } ;
struct dma_slave_config {int src_maxburst; int dst_maxburst; int dst_addr_width; int dst_addr; int direction; int src_addr_width; int src_addr; } ;
struct dma_async_tx_descriptor {struct spi_master* callback_param; int callback; } ;


 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int DMA_PREP_INTERRUPT ;
 int EINVAL ;
 int RXDMA ;
 int TXDMA ;
 int atomic_or (int ,int *) ;
 int atomic_set (int *,int ) ;
 int dma_async_issue_pending (int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (int ,int ,int ,int ,int ) ;
 int dmaengine_slave_config (int ,struct dma_slave_config*) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int dmaengine_terminate_sync (int ) ;
 int rockchip_spi_dma_rxcb ;
 int rockchip_spi_dma_txcb ;
 int spi_enable_chip (struct rockchip_spi*,int) ;

__attribute__((used)) static int rockchip_spi_prepare_dma(struct rockchip_spi *rs,
  struct spi_master *master, struct spi_transfer *xfer)
{
 struct dma_async_tx_descriptor *rxdesc, *txdesc;

 atomic_set(&rs->state, 0);

 rxdesc = ((void*)0);
 if (xfer->rx_buf) {
  struct dma_slave_config rxconf = {
   .direction = DMA_DEV_TO_MEM,
   .src_addr = rs->dma_addr_rx,
   .src_addr_width = rs->n_bytes,
   .src_maxburst = 1,
  };

  dmaengine_slave_config(master->dma_rx, &rxconf);

  rxdesc = dmaengine_prep_slave_sg(
    master->dma_rx,
    xfer->rx_sg.sgl, xfer->rx_sg.nents,
    DMA_DEV_TO_MEM, DMA_PREP_INTERRUPT);
  if (!rxdesc)
   return -EINVAL;

  rxdesc->callback = rockchip_spi_dma_rxcb;
  rxdesc->callback_param = master;
 }

 txdesc = ((void*)0);
 if (xfer->tx_buf) {
  struct dma_slave_config txconf = {
   .direction = DMA_MEM_TO_DEV,
   .dst_addr = rs->dma_addr_tx,
   .dst_addr_width = rs->n_bytes,
   .dst_maxburst = rs->fifo_len / 4,
  };

  dmaengine_slave_config(master->dma_tx, &txconf);

  txdesc = dmaengine_prep_slave_sg(
    master->dma_tx,
    xfer->tx_sg.sgl, xfer->tx_sg.nents,
    DMA_MEM_TO_DEV, DMA_PREP_INTERRUPT);
  if (!txdesc) {
   if (rxdesc)
    dmaengine_terminate_sync(master->dma_rx);
   return -EINVAL;
  }

  txdesc->callback = rockchip_spi_dma_txcb;
  txdesc->callback_param = master;
 }


 if (rxdesc) {
  atomic_or(RXDMA, &rs->state);
  dmaengine_submit(rxdesc);
  dma_async_issue_pending(master->dma_rx);
 }

 spi_enable_chip(rs, 1);

 if (txdesc) {
  atomic_or(TXDMA, &rs->state);
  dmaengine_submit(txdesc);
  dma_async_issue_pending(master->dma_tx);
 }


 return 1;
}
