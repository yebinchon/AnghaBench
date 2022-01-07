
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int dev; } ;
struct TYPE_3__ {int buf; } ;
struct TYPE_4__ {int dma_addr; TYPE_1__ xmit; } ;
struct sirfsoc_uart_port {scalar_t__ tx_dma_chan; TYPE_2__ rx_dma_items; scalar_t__ rx_dma_chan; struct uart_port port; } ;
struct platform_device {int dummy; } ;


 int SIRFSOC_RX_DMA_BUF_SIZE ;
 int dma_free_coherent (int ,int ,int ,int ) ;
 int dma_release_channel (scalar_t__) ;
 int dmaengine_terminate_all (scalar_t__) ;
 struct sirfsoc_uart_port* platform_get_drvdata (struct platform_device*) ;
 int sirfsoc_uart_drv ;
 int uart_remove_one_port (int *,struct uart_port*) ;

__attribute__((used)) static int sirfsoc_uart_remove(struct platform_device *pdev)
{
 struct sirfsoc_uart_port *sirfport = platform_get_drvdata(pdev);
 struct uart_port *port = &sirfport->port;
 uart_remove_one_port(&sirfsoc_uart_drv, port);
 if (sirfport->rx_dma_chan) {
  dmaengine_terminate_all(sirfport->rx_dma_chan);
  dma_release_channel(sirfport->rx_dma_chan);
  dma_free_coherent(port->dev, SIRFSOC_RX_DMA_BUF_SIZE,
    sirfport->rx_dma_items.xmit.buf,
    sirfport->rx_dma_items.dma_addr);
 }
 if (sirfport->tx_dma_chan) {
  dmaengine_terminate_all(sirfport->tx_dma_chan);
  dma_release_channel(sirfport->tx_dma_chan);
 }
 return 0;
}
