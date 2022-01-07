
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {struct mtk8250_data* private_data; } ;
struct uart_8250_port {scalar_t__ dma; } ;
struct mtk8250_data {int rx_status; } ;


 int DMA_RX_SHUTDOWN ;
 void serial8250_do_shutdown (struct uart_port*) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static void mtk8250_shutdown(struct uart_port *port)
{
 return serial8250_do_shutdown(port);
}
