
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int icount; TYPE_1__* state; struct mtk8250_data* private_data; } ;
struct uart_8250_port {int * dma; } ;
struct mtk8250_data {int rx_status; } ;
struct TYPE_2__ {int xmit; } ;


 int DMA_RX_START ;
 int memset (int *,int ,int) ;
 int serial8250_do_startup (struct uart_port*) ;
 int uart_circ_clear (int *) ;
 scalar_t__ uart_console (struct uart_port*) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static int mtk8250_startup(struct uart_port *port)
{
 memset(&port->icount, 0, sizeof(port->icount));

 return serial8250_do_startup(port);
}
