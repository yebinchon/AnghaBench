
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; } ;
struct dma_chan {int dummy; } ;
struct atmel_uart_port {int cookie_tx; struct dma_chan* chan_tx; int * desc_tx; int sg_tx; } ;


 int DMA_TO_DEVICE ;
 int EINVAL ;
 int dma_release_channel (struct dma_chan*) ;
 int dma_unmap_sg (int ,int *,int,int ) ;
 int dmaengine_terminate_all (struct dma_chan*) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;

__attribute__((used)) static void atmel_release_tx_dma(struct uart_port *port)
{
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);
 struct dma_chan *chan = atmel_port->chan_tx;

 if (chan) {
  dmaengine_terminate_all(chan);
  dma_release_channel(chan);
  dma_unmap_sg(port->dev, &atmel_port->sg_tx, 1,
    DMA_TO_DEVICE);
 }

 atmel_port->desc_tx = ((void*)0);
 atmel_port->chan_tx = ((void*)0);
 atmel_port->cookie_tx = -EINVAL;
}
