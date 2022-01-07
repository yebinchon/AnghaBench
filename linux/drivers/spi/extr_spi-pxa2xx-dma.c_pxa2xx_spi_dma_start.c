
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct driver_data {int dma_running; TYPE_1__* controller; } ;
struct TYPE_2__ {int dma_tx; int dma_rx; } ;


 int atomic_set (int *,int) ;
 int dma_async_issue_pending (int ) ;

void pxa2xx_spi_dma_start(struct driver_data *drv_data)
{
 dma_async_issue_pending(drv_data->controller->dma_rx);
 dma_async_issue_pending(drv_data->controller->dma_tx);

 atomic_set(&drv_data->dma_running, 1);
}
