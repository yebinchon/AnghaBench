
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct driver_data {TYPE_1__* controller; int dma_running; } ;
struct TYPE_2__ {int dma_tx; int dma_rx; } ;


 int atomic_set (int *,int ) ;
 int dmaengine_terminate_sync (int ) ;

void pxa2xx_spi_dma_stop(struct driver_data *drv_data)
{
 atomic_set(&drv_data->dma_running, 0);
 dmaengine_terminate_sync(drv_data->controller->dma_rx);
 dmaengine_terminate_sync(drv_data->controller->dma_tx);
}
