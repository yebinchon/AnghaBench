
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_8250_port {TYPE_1__* dma; } ;
struct TYPE_2__ {int (* rx_dma ) (struct uart_8250_port*) ;} ;




 int serial8250_rx_dma_flush (struct uart_8250_port*) ;
 int stub1 (struct uart_8250_port*) ;

__attribute__((used)) static bool handle_rx_dma(struct uart_8250_port *up, unsigned int iir)
{
 switch (iir & 0x3f) {
 case 128:
  serial8250_rx_dma_flush(up);

 case 129:
  return 1;
 }
 return up->dma->rx_dma(up);
}
