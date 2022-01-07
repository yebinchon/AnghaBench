
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct atmel_uart_port {int tx_stopped; int tx_done_mask; } ;


 int ATMEL_PDC_PTCR ;
 int ATMEL_PDC_TXTDIS ;
 int ATMEL_US_CR ;
 int ATMEL_US_IDR ;
 int ATMEL_US_TXDIS ;
 int atmel_start_rx (struct uart_port*) ;
 scalar_t__ atmel_uart_is_half_duplex (struct uart_port*) ;
 int atmel_uart_writel (struct uart_port*,int ,int ) ;
 scalar_t__ atmel_use_pdc_tx (struct uart_port*) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;

__attribute__((used)) static void atmel_stop_tx(struct uart_port *port)
{
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);

 if (atmel_use_pdc_tx(port)) {

  atmel_uart_writel(port, ATMEL_PDC_PTCR, ATMEL_PDC_TXTDIS);
 }






 atmel_uart_writel(port, ATMEL_US_CR, ATMEL_US_TXDIS);
 atmel_port->tx_stopped = 1;


 atmel_uart_writel(port, ATMEL_US_IDR, atmel_port->tx_done_mask);

 if (atmel_uart_is_half_duplex(port))
  atmel_start_rx(port);

}
