
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int read_status_mask; } ;


 int ATMEL_PDC_PTCR ;
 int ATMEL_PDC_RXTDIS ;
 int ATMEL_US_CR ;
 int ATMEL_US_ENDRX ;
 int ATMEL_US_IDR ;
 int ATMEL_US_RXDIS ;
 int ATMEL_US_RXRDY ;
 int ATMEL_US_TIMEOUT ;
 int atmel_uart_writel (struct uart_port*,int ,int) ;
 scalar_t__ atmel_use_pdc_rx (struct uart_port*) ;

__attribute__((used)) static void atmel_stop_rx(struct uart_port *port)
{
 atmel_uart_writel(port, ATMEL_US_CR, ATMEL_US_RXDIS);

 if (atmel_use_pdc_rx(port)) {

  atmel_uart_writel(port, ATMEL_PDC_PTCR, ATMEL_PDC_RXTDIS);
  atmel_uart_writel(port, ATMEL_US_IDR,
      ATMEL_US_ENDRX | ATMEL_US_TIMEOUT |
      port->read_status_mask);
 } else {
  atmel_uart_writel(port, ATMEL_US_IDR, ATMEL_US_RXRDY);
 }
}
