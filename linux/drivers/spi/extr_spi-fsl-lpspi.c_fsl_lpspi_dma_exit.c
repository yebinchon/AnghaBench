
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int * dma_tx; int * dma_rx; } ;


 int dma_release_channel (int *) ;

__attribute__((used)) static void fsl_lpspi_dma_exit(struct spi_controller *controller)
{
 if (controller->dma_rx) {
  dma_release_channel(controller->dma_rx);
  controller->dma_rx = ((void*)0);
 }

 if (controller->dma_tx) {
  dma_release_channel(controller->dma_tx);
  controller->dma_tx = ((void*)0);
 }
}
