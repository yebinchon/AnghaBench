
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sg_table {int nents; int sgl; } ;
struct spi_transfer {int len; int bits_per_word; struct sg_table rx_sg; struct sg_table tx_sg; } ;
struct spi_master {int dma_rx; int dev; int dma_tx; } ;
struct TYPE_3__ {struct spi_master* master; } ;
struct spi_imx_data {unsigned int wml; TYPE_2__* devtype_data; int dma_rx_completion; int * dev; int dma_tx_completion; TYPE_1__ bitbang; } ;
struct scatterlist {int dummy; } ;
struct dma_async_tx_descriptor {void* callback_param; int callback; } ;
struct TYPE_4__ {int fifo_size; int (* reset ) (struct spi_imx_data*) ;int (* setup_wml ) (struct spi_imx_data*) ;} ;


 int DMA_CTRL_ACK ;
 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int DMA_PREP_INTERRUPT ;
 int EINVAL ;
 int ETIMEDOUT ;
 int dev_err (int *,char*) ;
 int dma_async_issue_pending (int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (int ,int ,int ,int ,int) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int dmaengine_terminate_all (int ) ;
 int reinit_completion (int *) ;
 unsigned int sg_dma_len (struct scatterlist*) ;
 struct scatterlist* sg_last (int ,int ) ;
 unsigned int spi_imx_bytes_per_word (int ) ;
 unsigned long spi_imx_calculate_timeout (struct spi_imx_data*,int) ;
 int spi_imx_dma_configure (struct spi_master*) ;
 int spi_imx_dma_rx_callback ;
 int spi_imx_dma_tx_callback ;
 int stub1 (struct spi_imx_data*) ;
 int stub2 (struct spi_imx_data*) ;
 unsigned long wait_for_completion_timeout (int *,unsigned long) ;

__attribute__((used)) static int spi_imx_dma_transfer(struct spi_imx_data *spi_imx,
    struct spi_transfer *transfer)
{
 struct dma_async_tx_descriptor *desc_tx, *desc_rx;
 unsigned long transfer_timeout;
 unsigned long timeout;
 struct spi_master *master = spi_imx->bitbang.master;
 struct sg_table *tx = &transfer->tx_sg, *rx = &transfer->rx_sg;
 struct scatterlist *last_sg = sg_last(rx->sgl, rx->nents);
 unsigned int bytes_per_word, i;
 int ret;


 bytes_per_word = spi_imx_bytes_per_word(transfer->bits_per_word);
 for (i = spi_imx->devtype_data->fifo_size / 2; i > 0; i--) {
  if (!(sg_dma_len(last_sg) % (i * bytes_per_word)))
   break;
 }

 if (i == 0)
  i = 1;

 spi_imx->wml = i;

 ret = spi_imx_dma_configure(master);
 if (ret)
  return ret;

 if (!spi_imx->devtype_data->setup_wml) {
  dev_err(spi_imx->dev, "No setup_wml()?\n");
  return -EINVAL;
 }
 spi_imx->devtype_data->setup_wml(spi_imx);





 desc_rx = dmaengine_prep_slave_sg(master->dma_rx,
    rx->sgl, rx->nents, DMA_DEV_TO_MEM,
    DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
 if (!desc_rx)
  return -EINVAL;

 desc_rx->callback = spi_imx_dma_rx_callback;
 desc_rx->callback_param = (void *)spi_imx;
 dmaengine_submit(desc_rx);
 reinit_completion(&spi_imx->dma_rx_completion);
 dma_async_issue_pending(master->dma_rx);

 desc_tx = dmaengine_prep_slave_sg(master->dma_tx,
    tx->sgl, tx->nents, DMA_MEM_TO_DEV,
    DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
 if (!desc_tx) {
  dmaengine_terminate_all(master->dma_tx);
  return -EINVAL;
 }

 desc_tx->callback = spi_imx_dma_tx_callback;
 desc_tx->callback_param = (void *)spi_imx;
 dmaengine_submit(desc_tx);
 reinit_completion(&spi_imx->dma_tx_completion);
 dma_async_issue_pending(master->dma_tx);

 transfer_timeout = spi_imx_calculate_timeout(spi_imx, transfer->len);


 timeout = wait_for_completion_timeout(&spi_imx->dma_tx_completion,
      transfer_timeout);
 if (!timeout) {
  dev_err(spi_imx->dev, "I/O Error in DMA TX\n");
  dmaengine_terminate_all(master->dma_tx);
  dmaengine_terminate_all(master->dma_rx);
  return -ETIMEDOUT;
 }

 timeout = wait_for_completion_timeout(&spi_imx->dma_rx_completion,
           transfer_timeout);
 if (!timeout) {
  dev_err(&master->dev, "I/O Error in DMA RX\n");
  spi_imx->devtype_data->reset(spi_imx);
  dmaengine_terminate_all(master->dma_rx);
  return -ETIMEDOUT;
 }

 return transfer->len;
}
