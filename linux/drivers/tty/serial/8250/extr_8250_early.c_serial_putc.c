
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 unsigned int BOTH_EMPTY ;
 int UART_LSR ;
 int UART_TX ;
 int cpu_relax () ;
 unsigned int serial8250_early_in (struct uart_port*,int ) ;
 int serial8250_early_out (struct uart_port*,int ,int) ;

__attribute__((used)) static void serial_putc(struct uart_port *port, int c)
{
 unsigned int status;

 serial8250_early_out(port, UART_TX, c);

 for (;;) {
  status = serial8250_early_in(port, UART_LSR);
  if ((status & BOTH_EMPTY) == BOTH_EMPTY)
   break;
  cpu_relax();
 }
}
