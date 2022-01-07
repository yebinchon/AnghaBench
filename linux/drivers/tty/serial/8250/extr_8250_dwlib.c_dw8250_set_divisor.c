
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int DW_UART_DLF ;
 int dw8250_writel_ext (struct uart_port*,int ,unsigned int) ;
 int serial8250_do_set_divisor (struct uart_port*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void dw8250_set_divisor(struct uart_port *p, unsigned int baud,
          unsigned int quot, unsigned int quot_frac)
{
 dw8250_writel_ext(p, DW_UART_DLF, quot_frac);
 serial8250_do_set_divisor(p, baud, quot, quot_frac);
}
