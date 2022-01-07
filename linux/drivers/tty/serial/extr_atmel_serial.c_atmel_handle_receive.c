
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct atmel_uart_port {scalar_t__ break_active; int tasklet_rx; } ;


 int ATMEL_US_CR ;
 unsigned int ATMEL_US_ENDRX ;
 unsigned int ATMEL_US_FRAME ;
 int ATMEL_US_IDR ;
 unsigned int ATMEL_US_OVRE ;
 unsigned int ATMEL_US_PARE ;
 unsigned int ATMEL_US_RSTSTA ;
 unsigned int ATMEL_US_RXBRK ;
 unsigned int ATMEL_US_RXRDY ;
 unsigned int ATMEL_US_TIMEOUT ;
 int atmel_pdc_rxerr (struct uart_port*,unsigned int) ;
 int atmel_rx_chars (struct uart_port*) ;
 int atmel_tasklet_schedule (struct atmel_uart_port*,int *) ;
 int atmel_uart_writel (struct uart_port*,int ,unsigned int) ;
 scalar_t__ atmel_use_dma_rx (struct uart_port*) ;
 scalar_t__ atmel_use_pdc_rx (struct uart_port*) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;

__attribute__((used)) static void
atmel_handle_receive(struct uart_port *port, unsigned int pending)
{
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);

 if (atmel_use_pdc_rx(port)) {







  if (pending & (ATMEL_US_ENDRX | ATMEL_US_TIMEOUT)) {
   atmel_uart_writel(port, ATMEL_US_IDR,
       (ATMEL_US_ENDRX | ATMEL_US_TIMEOUT));
   atmel_tasklet_schedule(atmel_port,
            &atmel_port->tasklet_rx);
  }

  if (pending & (ATMEL_US_RXBRK | ATMEL_US_OVRE |
    ATMEL_US_FRAME | ATMEL_US_PARE))
   atmel_pdc_rxerr(port, pending);
 }

 if (atmel_use_dma_rx(port)) {
  if (pending & ATMEL_US_TIMEOUT) {
   atmel_uart_writel(port, ATMEL_US_IDR,
       ATMEL_US_TIMEOUT);
   atmel_tasklet_schedule(atmel_port,
            &atmel_port->tasklet_rx);
  }
 }


 if (pending & ATMEL_US_RXRDY)
  atmel_rx_chars(port);
 else if (pending & ATMEL_US_RXBRK) {




  atmel_uart_writel(port, ATMEL_US_CR, ATMEL_US_RSTSTA);
  atmel_uart_writel(port, ATMEL_US_IDR, ATMEL_US_RXBRK);
  atmel_port->break_active = 0;
 }
}
