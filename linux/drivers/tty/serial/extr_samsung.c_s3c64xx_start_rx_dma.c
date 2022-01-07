
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct s3c24xx_uart_port {TYPE_1__ port; struct s3c24xx_uart_dma* dma; } ;
struct s3c24xx_uart_dma {int rx_chan; TYPE_2__* rx_desc; int rx_cookie; int rx_size; int rx_bytes_requested; int rx_addr; } ;
struct TYPE_5__ {struct s3c24xx_uart_port* callback_param; int callback; } ;


 int DMA_DEV_TO_MEM ;
 int DMA_FROM_DEVICE ;
 int DMA_PREP_INTERRUPT ;
 int dev_err (int ,char*) ;
 int dma_async_issue_pending (int ) ;
 int dma_sync_single_for_device (int ,int ,int ,int ) ;
 TYPE_2__* dmaengine_prep_slave_single (int ,int ,int ,int ,int ) ;
 int dmaengine_submit (TYPE_2__*) ;
 int s3c24xx_serial_rx_dma_complete ;

__attribute__((used)) static void s3c64xx_start_rx_dma(struct s3c24xx_uart_port *ourport)
{
 struct s3c24xx_uart_dma *dma = ourport->dma;

 dma_sync_single_for_device(ourport->port.dev, dma->rx_addr,
    dma->rx_size, DMA_FROM_DEVICE);

 dma->rx_desc = dmaengine_prep_slave_single(dma->rx_chan,
    dma->rx_addr, dma->rx_size, DMA_DEV_TO_MEM,
    DMA_PREP_INTERRUPT);
 if (!dma->rx_desc) {
  dev_err(ourport->port.dev, "Unable to get desc for Rx\n");
  return;
 }

 dma->rx_desc->callback = s3c24xx_serial_rx_dma_complete;
 dma->rx_desc->callback_param = ourport;
 dma->rx_bytes_requested = dma->rx_size;

 dma->rx_cookie = dmaengine_submit(dma->rx_desc);
 dma_async_issue_pending(dma->rx_chan);
}
