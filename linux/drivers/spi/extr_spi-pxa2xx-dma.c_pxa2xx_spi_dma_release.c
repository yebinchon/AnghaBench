
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int * dma_tx; int * dma_rx; } ;
struct driver_data {struct spi_controller* controller; } ;


 int dma_release_channel (int *) ;
 int dmaengine_terminate_sync (int *) ;

void pxa2xx_spi_dma_release(struct driver_data *drv_data)
{
 struct spi_controller *controller = drv_data->controller;

 if (controller->dma_rx) {
  dmaengine_terminate_sync(controller->dma_rx);
  dma_release_channel(controller->dma_rx);
  controller->dma_rx = ((void*)0);
 }
 if (controller->dma_tx) {
  dmaengine_terminate_sync(controller->dma_tx);
  dma_release_channel(controller->dma_tx);
  controller->dma_tx = ((void*)0);
 }
}
