
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int max_dma_len; int can_dma; int * dma_rx; int * dma_tx; } ;
struct fsl_lpspi_data {int dma_tx_completion; int dma_rx_completion; } ;
struct device {int dummy; } ;


 int FSL_LPSPI_MAX_EDMA_BYTES ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_dbg (struct device*,char*,int) ;
 void* dma_request_slave_channel_reason (struct device*,char*) ;
 int fsl_lpspi_can_dma ;
 int fsl_lpspi_dma_exit (struct spi_controller*) ;
 int init_completion (int *) ;

__attribute__((used)) static int fsl_lpspi_dma_init(struct device *dev,
         struct fsl_lpspi_data *fsl_lpspi,
         struct spi_controller *controller)
{
 int ret;


 controller->dma_tx = dma_request_slave_channel_reason(dev, "tx");
 if (IS_ERR(controller->dma_tx)) {
  ret = PTR_ERR(controller->dma_tx);
  dev_dbg(dev, "can't get the TX DMA channel, error %d!\n", ret);
  controller->dma_tx = ((void*)0);
  goto err;
 }


 controller->dma_rx = dma_request_slave_channel_reason(dev, "rx");
 if (IS_ERR(controller->dma_rx)) {
  ret = PTR_ERR(controller->dma_rx);
  dev_dbg(dev, "can't get the RX DMA channel, error %d\n", ret);
  controller->dma_rx = ((void*)0);
  goto err;
 }

 init_completion(&fsl_lpspi->dma_rx_completion);
 init_completion(&fsl_lpspi->dma_tx_completion);
 controller->can_dma = fsl_lpspi_can_dma;
 controller->max_dma_len = FSL_LPSPI_MAX_EDMA_BYTES;

 return 0;
err:
 fsl_lpspi_dma_exit(controller);
 return ret;
}
