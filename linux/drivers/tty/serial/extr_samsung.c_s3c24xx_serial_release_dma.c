
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct s3c24xx_uart_port {TYPE_1__ port; struct s3c24xx_uart_dma* dma; } ;
struct s3c24xx_uart_dma {int * tx_chan; int tx_addr; int * rx_chan; int rx_buf; int rx_size; int rx_addr; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int UART_XMIT_SIZE ;
 int dma_release_channel (int *) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int dmaengine_terminate_all (int *) ;
 int kfree (int ) ;

__attribute__((used)) static void s3c24xx_serial_release_dma(struct s3c24xx_uart_port *p)
{
 struct s3c24xx_uart_dma *dma = p->dma;

 if (dma->rx_chan) {
  dmaengine_terminate_all(dma->rx_chan);
  dma_unmap_single(p->port.dev, dma->rx_addr,
    dma->rx_size, DMA_FROM_DEVICE);
  kfree(dma->rx_buf);
  dma_release_channel(dma->rx_chan);
  dma->rx_chan = ((void*)0);
 }

 if (dma->tx_chan) {
  dmaengine_terminate_all(dma->tx_chan);
  dma_unmap_single(p->port.dev, dma->tx_addr,
    UART_XMIT_SIZE, DMA_TO_DEVICE);
  dma_release_channel(dma->tx_chan);
  dma->tx_chan = ((void*)0);
 }
}
