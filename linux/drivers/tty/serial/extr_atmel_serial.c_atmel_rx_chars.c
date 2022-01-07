
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct atmel_uart_port {int break_active; int tasklet_rx; } ;


 int ATMEL_US_CR ;
 int ATMEL_US_CSR ;
 unsigned int ATMEL_US_FRAME ;
 int ATMEL_US_IDR ;
 int ATMEL_US_IER ;
 unsigned int ATMEL_US_OVRE ;
 unsigned int ATMEL_US_PARE ;
 unsigned int ATMEL_US_RSTSTA ;
 unsigned int ATMEL_US_RXBRK ;
 unsigned int ATMEL_US_RXRDY ;
 int atmel_buffer_rx_char (struct uart_port*,unsigned int,unsigned int) ;
 int atmel_tasklet_schedule (struct atmel_uart_port*,int *) ;
 unsigned int atmel_uart_read_char (struct uart_port*) ;
 unsigned int atmel_uart_readl (struct uart_port*,int ) ;
 int atmel_uart_writel (struct uart_port*,int ,unsigned int) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void atmel_rx_chars(struct uart_port *port)
{
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);
 unsigned int status, ch;

 status = atmel_uart_readl(port, ATMEL_US_CSR);
 while (status & ATMEL_US_RXRDY) {
  ch = atmel_uart_read_char(port);





  if (unlikely(status & (ATMEL_US_PARE | ATMEL_US_FRAME
           | ATMEL_US_OVRE | ATMEL_US_RXBRK)
        || atmel_port->break_active)) {


   atmel_uart_writel(port, ATMEL_US_CR, ATMEL_US_RSTSTA);

   if (status & ATMEL_US_RXBRK
       && !atmel_port->break_active) {
    atmel_port->break_active = 1;
    atmel_uart_writel(port, ATMEL_US_IER,
        ATMEL_US_RXBRK);
   } else {







    atmel_uart_writel(port, ATMEL_US_IDR,
        ATMEL_US_RXBRK);
    status &= ~ATMEL_US_RXBRK;
    atmel_port->break_active = 0;
   }
  }

  atmel_buffer_rx_char(port, status, ch);
  status = atmel_uart_readl(port, ATMEL_US_CSR);
 }

 atmel_tasklet_schedule(atmel_port, &atmel_port->tasklet_rx);
}
