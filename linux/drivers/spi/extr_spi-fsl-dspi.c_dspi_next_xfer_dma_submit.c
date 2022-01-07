
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fsl_dspi_dma {int curr_xfer_len; int chan_rx; int chan_tx; int cmd_rx_complete; int cmd_tx_complete; TYPE_2__* rx_desc; int rx_dma_phys; TYPE_2__* tx_desc; int tx_dma_phys; int * tx_dma_buf; } ;
struct fsl_dspi {struct fsl_dspi_dma* dma; int ctlr; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct fsl_dspi* callback_param; int callback; } ;
struct TYPE_3__ {struct device dev; } ;


 int DMA_COMPLETION_TIMEOUT ;
 int DMA_CTRL_ACK ;
 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int DMA_PREP_INTERRUPT ;
 int DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int EINVAL ;
 int EIO ;
 int ETIMEDOUT ;
 int dev_err (struct device*,char*) ;
 int dma_async_issue_pending (int ) ;
 scalar_t__ dma_submit_error (int ) ;
 void* dmaengine_prep_slave_single (int ,int ,int,int ,int) ;
 int dmaengine_submit (TYPE_2__*) ;
 int dmaengine_terminate_all (int ) ;
 int dspi_pop_tx_pushr (struct fsl_dspi*) ;
 int dspi_rx_dma_callback ;
 int dspi_tx_dma_callback ;
 int reinit_completion (int *) ;
 scalar_t__ spi_controller_is_slave (int ) ;
 int wait_for_completion_interruptible (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int dspi_next_xfer_dma_submit(struct fsl_dspi *dspi)
{
 struct device *dev = &dspi->pdev->dev;
 struct fsl_dspi_dma *dma = dspi->dma;
 int time_left;
 int i;

 for (i = 0; i < dma->curr_xfer_len; i++)
  dspi->dma->tx_dma_buf[i] = dspi_pop_tx_pushr(dspi);

 dma->tx_desc = dmaengine_prep_slave_single(dma->chan_tx,
     dma->tx_dma_phys,
     dma->curr_xfer_len *
     DMA_SLAVE_BUSWIDTH_4_BYTES,
     DMA_MEM_TO_DEV,
     DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
 if (!dma->tx_desc) {
  dev_err(dev, "Not able to get desc for DMA xfer\n");
  return -EIO;
 }

 dma->tx_desc->callback = dspi_tx_dma_callback;
 dma->tx_desc->callback_param = dspi;
 if (dma_submit_error(dmaengine_submit(dma->tx_desc))) {
  dev_err(dev, "DMA submit failed\n");
  return -EINVAL;
 }

 dma->rx_desc = dmaengine_prep_slave_single(dma->chan_rx,
     dma->rx_dma_phys,
     dma->curr_xfer_len *
     DMA_SLAVE_BUSWIDTH_4_BYTES,
     DMA_DEV_TO_MEM,
     DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
 if (!dma->rx_desc) {
  dev_err(dev, "Not able to get desc for DMA xfer\n");
  return -EIO;
 }

 dma->rx_desc->callback = dspi_rx_dma_callback;
 dma->rx_desc->callback_param = dspi;
 if (dma_submit_error(dmaengine_submit(dma->rx_desc))) {
  dev_err(dev, "DMA submit failed\n");
  return -EINVAL;
 }

 reinit_completion(&dspi->dma->cmd_rx_complete);
 reinit_completion(&dspi->dma->cmd_tx_complete);

 dma_async_issue_pending(dma->chan_rx);
 dma_async_issue_pending(dma->chan_tx);

 if (spi_controller_is_slave(dspi->ctlr)) {
  wait_for_completion_interruptible(&dspi->dma->cmd_rx_complete);
  return 0;
 }

 time_left = wait_for_completion_timeout(&dspi->dma->cmd_tx_complete,
      DMA_COMPLETION_TIMEOUT);
 if (time_left == 0) {
  dev_err(dev, "DMA tx timeout\n");
  dmaengine_terminate_all(dma->chan_tx);
  dmaengine_terminate_all(dma->chan_rx);
  return -ETIMEDOUT;
 }

 time_left = wait_for_completion_timeout(&dspi->dma->cmd_rx_complete,
      DMA_COMPLETION_TIMEOUT);
 if (time_left == 0) {
  dev_err(dev, "DMA rx timeout\n");
  dmaengine_terminate_all(dma->chan_tx);
  dmaengine_terminate_all(dma->chan_rx);
  return -ETIMEDOUT;
 }

 return 0;
}
