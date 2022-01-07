
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {struct uart_8250_dma* dma; } ;
struct uart_8250_dma {int rxchan; scalar_t__ rx_running; } ;


 int __dma_rx_complete (struct uart_8250_port*) ;
 int dmaengine_pause (int ) ;
 int dmaengine_terminate_async (int ) ;

void serial8250_rx_dma_flush(struct uart_8250_port *p)
{
 struct uart_8250_dma *dma = p->dma;

 if (dma->rx_running) {
  dmaengine_pause(dma->rxchan);
  __dma_rx_complete(p);
  dmaengine_terminate_async(dma->rxchan);
 }
}
