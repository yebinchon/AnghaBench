
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; } ;
struct dma_chan {int dummy; } ;
struct atmel_uart_port {int cookie_rx; struct dma_chan* chan_rx; int * desc_rx; int sg_rx; } ;


 int DMA_FROM_DEVICE ;
 int EINVAL ;
 int dma_release_channel (struct dma_chan*) ;
 int dma_unmap_sg (int ,int *,int,int ) ;
 int dmaengine_terminate_all (struct dma_chan*) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;

__attribute__((used)) static void atmel_release_rx_dma(struct uart_port *port)
{
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);
 struct dma_chan *chan = atmel_port->chan_rx;

 if (chan) {
  dmaengine_terminate_all(chan);
  dma_release_channel(chan);
  dma_unmap_sg(port->dev, &atmel_port->sg_rx, 1,
    DMA_FROM_DEVICE);
 }

 atmel_port->desc_rx = ((void*)0);
 atmel_port->chan_rx = ((void*)0);
 atmel_port->cookie_rx = -EINVAL;
}
