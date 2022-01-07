
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_transfer {int dummy; } ;
struct driver_data {TYPE_1__* controller; TYPE_2__* pdev; } ;
struct dma_async_tx_descriptor {struct driver_data* callback_param; int callback; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int dma_tx; } ;


 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int EBUSY ;
 int dev_err (int *,char*) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int dmaengine_terminate_async (int ) ;
 int pxa2xx_spi_dma_callback ;
 struct dma_async_tx_descriptor* pxa2xx_spi_dma_prepare_one (struct driver_data*,int ,struct spi_transfer*) ;

int pxa2xx_spi_dma_prepare(struct driver_data *drv_data,
      struct spi_transfer *xfer)
{
 struct dma_async_tx_descriptor *tx_desc, *rx_desc;
 int err;

 tx_desc = pxa2xx_spi_dma_prepare_one(drv_data, DMA_MEM_TO_DEV, xfer);
 if (!tx_desc) {
  dev_err(&drv_data->pdev->dev,
   "failed to get DMA TX descriptor\n");
  err = -EBUSY;
  goto err_tx;
 }

 rx_desc = pxa2xx_spi_dma_prepare_one(drv_data, DMA_DEV_TO_MEM, xfer);
 if (!rx_desc) {
  dev_err(&drv_data->pdev->dev,
   "failed to get DMA RX descriptor\n");
  err = -EBUSY;
  goto err_rx;
 }


 rx_desc->callback = pxa2xx_spi_dma_callback;
 rx_desc->callback_param = drv_data;

 dmaengine_submit(rx_desc);
 dmaengine_submit(tx_desc);
 return 0;

err_rx:
 dmaengine_terminate_async(drv_data->controller->dma_tx);
err_tx:
 return err;
}
