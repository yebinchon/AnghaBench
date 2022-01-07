
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct tegra_uart_port {unsigned int rx_bytes_requested; int rx_dma_chan; TYPE_2__* rx_dma_desc; int rx_cookie; int rx_dma_buf_phys; TYPE_1__ uport; } ;
struct TYPE_5__ {struct tegra_uart_port* callback_param; int callback; } ;


 int DMA_DEV_TO_MEM ;
 int DMA_PREP_INTERRUPT ;
 int DMA_TO_DEVICE ;
 int EIO ;
 unsigned int TEGRA_UART_RX_DMA_BUFFER_SIZE ;
 int dev_err (int ,char*) ;
 int dma_async_issue_pending (int ) ;
 int dma_sync_single_for_device (int ,int ,unsigned int,int ) ;
 TYPE_2__* dmaengine_prep_slave_single (int ,int ,unsigned int,int ,int ) ;
 int dmaengine_submit (TYPE_2__*) ;
 int tegra_uart_rx_dma_complete ;

__attribute__((used)) static int tegra_uart_start_rx_dma(struct tegra_uart_port *tup)
{
 unsigned int count = TEGRA_UART_RX_DMA_BUFFER_SIZE;

 tup->rx_dma_desc = dmaengine_prep_slave_single(tup->rx_dma_chan,
    tup->rx_dma_buf_phys, count, DMA_DEV_TO_MEM,
    DMA_PREP_INTERRUPT);
 if (!tup->rx_dma_desc) {
  dev_err(tup->uport.dev, "Not able to get desc for Rx\n");
  return -EIO;
 }

 tup->rx_dma_desc->callback = tegra_uart_rx_dma_complete;
 tup->rx_dma_desc->callback_param = tup;
 dma_sync_single_for_device(tup->uport.dev, tup->rx_dma_buf_phys,
    count, DMA_TO_DEVICE);
 tup->rx_bytes_requested = count;
 tup->rx_cookie = dmaengine_submit(tup->rx_dma_desc);
 dma_async_issue_pending(tup->rx_dma_chan);
 return 0;
}
