
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int nents; int sgl; } ;
struct spi_transfer {int len; struct sg_table rx_sg; struct sg_table tx_sg; } ;
struct spi_controller {int dma_rx; int dma_tx; } ;
struct fsl_lpspi_data {int slave_aborted; int dev; int dma_rx_completion; int dma_tx_completion; int is_slave; } ;
struct dma_async_tx_descriptor {void* callback_param; int callback; } ;


 int DMA_CTRL_ACK ;
 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int DMA_PREP_INTERRUPT ;
 int EINTR ;
 int EINVAL ;
 int ETIMEDOUT ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int dma_async_issue_pending (int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (int ,int ,int ,int ,int) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int dmaengine_terminate_all (int ) ;
 unsigned long fsl_lpspi_calculate_timeout (struct fsl_lpspi_data*,int ) ;
 int fsl_lpspi_dma_configure (struct spi_controller*) ;
 int fsl_lpspi_dma_rx_callback ;
 int fsl_lpspi_dma_tx_callback ;
 int fsl_lpspi_reset (struct fsl_lpspi_data*) ;
 int reinit_completion (int *) ;
 scalar_t__ wait_for_completion_interruptible (int *) ;
 unsigned long wait_for_completion_timeout (int *,unsigned long) ;

__attribute__((used)) static int fsl_lpspi_dma_transfer(struct spi_controller *controller,
    struct fsl_lpspi_data *fsl_lpspi,
    struct spi_transfer *transfer)
{
 struct dma_async_tx_descriptor *desc_tx, *desc_rx;
 unsigned long transfer_timeout;
 unsigned long timeout;
 struct sg_table *tx = &transfer->tx_sg, *rx = &transfer->rx_sg;
 int ret;

 ret = fsl_lpspi_dma_configure(controller);
 if (ret)
  return ret;

 desc_rx = dmaengine_prep_slave_sg(controller->dma_rx,
    rx->sgl, rx->nents, DMA_DEV_TO_MEM,
    DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
 if (!desc_rx)
  return -EINVAL;

 desc_rx->callback = fsl_lpspi_dma_rx_callback;
 desc_rx->callback_param = (void *)fsl_lpspi;
 dmaengine_submit(desc_rx);
 reinit_completion(&fsl_lpspi->dma_rx_completion);
 dma_async_issue_pending(controller->dma_rx);

 desc_tx = dmaengine_prep_slave_sg(controller->dma_tx,
    tx->sgl, tx->nents, DMA_MEM_TO_DEV,
    DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
 if (!desc_tx) {
  dmaengine_terminate_all(controller->dma_tx);
  return -EINVAL;
 }

 desc_tx->callback = fsl_lpspi_dma_tx_callback;
 desc_tx->callback_param = (void *)fsl_lpspi;
 dmaengine_submit(desc_tx);
 reinit_completion(&fsl_lpspi->dma_tx_completion);
 dma_async_issue_pending(controller->dma_tx);

 fsl_lpspi->slave_aborted = 0;

 if (!fsl_lpspi->is_slave) {
  transfer_timeout = fsl_lpspi_calculate_timeout(fsl_lpspi,
              transfer->len);


  timeout = wait_for_completion_timeout(&fsl_lpspi->dma_tx_completion,
            transfer_timeout);
  if (!timeout) {
   dev_err(fsl_lpspi->dev, "I/O Error in DMA TX\n");
   dmaengine_terminate_all(controller->dma_tx);
   dmaengine_terminate_all(controller->dma_rx);
   fsl_lpspi_reset(fsl_lpspi);
   return -ETIMEDOUT;
  }

  timeout = wait_for_completion_timeout(&fsl_lpspi->dma_rx_completion,
            transfer_timeout);
  if (!timeout) {
   dev_err(fsl_lpspi->dev, "I/O Error in DMA RX\n");
   dmaengine_terminate_all(controller->dma_tx);
   dmaengine_terminate_all(controller->dma_rx);
   fsl_lpspi_reset(fsl_lpspi);
   return -ETIMEDOUT;
  }
 } else {
  if (wait_for_completion_interruptible(&fsl_lpspi->dma_tx_completion) ||
   fsl_lpspi->slave_aborted) {
   dev_dbg(fsl_lpspi->dev,
    "I/O Error in DMA TX interrupted\n");
   dmaengine_terminate_all(controller->dma_tx);
   dmaengine_terminate_all(controller->dma_rx);
   fsl_lpspi_reset(fsl_lpspi);
   return -EINTR;
  }

  if (wait_for_completion_interruptible(&fsl_lpspi->dma_rx_completion) ||
   fsl_lpspi->slave_aborted) {
   dev_dbg(fsl_lpspi->dev,
    "I/O Error in DMA RX interrupted\n");
   dmaengine_terminate_all(controller->dma_tx);
   dmaengine_terminate_all(controller->dma_rx);
   fsl_lpspi_reset(fsl_lpspi);
   return -EINTR;
  }
 }

 fsl_lpspi_reset(fsl_lpspi);

 return 0;
}
