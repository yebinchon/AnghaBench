
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct tegra_uart_port {int * tx_dma_buf_virt; scalar_t__ tx_dma_buf_phys; int * tx_dma_chan; TYPE_1__ uport; int * rx_dma_buf_virt; scalar_t__ rx_dma_buf_phys; int * rx_dma_chan; } ;


 int DMA_TO_DEVICE ;
 int TEGRA_UART_RX_DMA_BUFFER_SIZE ;
 int UART_XMIT_SIZE ;
 int dma_free_coherent (int ,int ,int *,scalar_t__) ;
 int dma_release_channel (int *) ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;
 int dmaengine_terminate_all (int *) ;

__attribute__((used)) static void tegra_uart_dma_channel_free(struct tegra_uart_port *tup,
  bool dma_to_memory)
{
 if (dma_to_memory) {
  dmaengine_terminate_all(tup->rx_dma_chan);
  dma_release_channel(tup->rx_dma_chan);
  dma_free_coherent(tup->uport.dev, TEGRA_UART_RX_DMA_BUFFER_SIZE,
    tup->rx_dma_buf_virt, tup->rx_dma_buf_phys);
  tup->rx_dma_chan = ((void*)0);
  tup->rx_dma_buf_phys = 0;
  tup->rx_dma_buf_virt = ((void*)0);
 } else {
  dmaengine_terminate_all(tup->tx_dma_chan);
  dma_release_channel(tup->tx_dma_chan);
  dma_unmap_single(tup->uport.dev, tup->tx_dma_buf_phys,
   UART_XMIT_SIZE, DMA_TO_DEVICE);
  tup->tx_dma_chan = ((void*)0);
  tup->tx_dma_buf_phys = 0;
  tup->tx_dma_buf_virt = ((void*)0);
 }
}
