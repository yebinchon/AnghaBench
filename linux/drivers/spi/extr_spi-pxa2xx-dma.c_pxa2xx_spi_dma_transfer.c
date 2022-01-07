
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct driver_data {int mask_sr; TYPE_2__* controller; TYPE_1__* pdev; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int dma_tx; int dma_rx; } ;
struct TYPE_3__ {int dev; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SSSR ;
 int SSSR_ROR ;
 int dev_err (int *,char*) ;
 int dmaengine_terminate_async (int ) ;
 int pxa2xx_spi_dma_transfer_complete (struct driver_data*,int) ;
 int pxa2xx_spi_read (struct driver_data*,int ) ;

irqreturn_t pxa2xx_spi_dma_transfer(struct driver_data *drv_data)
{
 u32 status;

 status = pxa2xx_spi_read(drv_data, SSSR) & drv_data->mask_sr;
 if (status & SSSR_ROR) {
  dev_err(&drv_data->pdev->dev, "FIFO overrun\n");

  dmaengine_terminate_async(drv_data->controller->dma_rx);
  dmaengine_terminate_async(drv_data->controller->dma_tx);

  pxa2xx_spi_dma_transfer_complete(drv_data, 1);
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
