
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int overrun; int frame; int parity; int brk; } ;
struct uart_port {TYPE_1__ icount; } ;


 int ATMEL_US_CR ;
 unsigned int ATMEL_US_FRAME ;
 unsigned int ATMEL_US_OVRE ;
 unsigned int ATMEL_US_PARE ;
 int ATMEL_US_RSTSTA ;
 unsigned int ATMEL_US_RXBRK ;
 int atmel_uart_writel (struct uart_port*,int ,int ) ;

__attribute__((used)) static void atmel_pdc_rxerr(struct uart_port *port, unsigned int status)
{

 atmel_uart_writel(port, ATMEL_US_CR, ATMEL_US_RSTSTA);

 if (status & ATMEL_US_RXBRK) {

  status &= ~(ATMEL_US_PARE | ATMEL_US_FRAME);
  port->icount.brk++;
 }
 if (status & ATMEL_US_PARE)
  port->icount.parity++;
 if (status & ATMEL_US_FRAME)
  port->icount.frame++;
 if (status & ATMEL_US_OVRE)
  port->icount.overrun++;
}
