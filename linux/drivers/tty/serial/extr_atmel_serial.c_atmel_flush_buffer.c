
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ ofs; } ;
struct atmel_uart_port {scalar_t__ tx_len; TYPE_1__ pdc_tx; } ;


 int ATMEL_PDC_TCR ;
 int atmel_uart_writel (struct uart_port*,int ,int ) ;
 scalar_t__ atmel_use_pdc_tx (struct uart_port*) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;

__attribute__((used)) static void atmel_flush_buffer(struct uart_port *port)
{
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);

 if (atmel_use_pdc_tx(port)) {
  atmel_uart_writel(port, ATMEL_PDC_TCR, 0);
  atmel_port->pdc_tx.ofs = 0;
 }




 atmel_port->tx_len = 0;
}
