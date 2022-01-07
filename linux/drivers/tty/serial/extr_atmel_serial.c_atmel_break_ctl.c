
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int ATMEL_US_CR ;
 int ATMEL_US_STPBRK ;
 int ATMEL_US_STTBRK ;
 int atmel_uart_writel (struct uart_port*,int ,int ) ;

__attribute__((used)) static void atmel_break_ctl(struct uart_port *port, int break_state)
{
 if (break_state != 0)

  atmel_uart_writel(port, ATMEL_US_CR, ATMEL_US_STTBRK);
 else

  atmel_uart_writel(port, ATMEL_US_CR, ATMEL_US_STPBRK);
}
