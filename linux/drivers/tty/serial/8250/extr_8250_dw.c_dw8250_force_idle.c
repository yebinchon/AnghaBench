
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int (* serial_in ) (struct uart_port*,int ) ;} ;
struct uart_8250_port {int dummy; } ;


 int UART_RX ;
 int serial8250_clear_and_reinit_fifos (struct uart_8250_port*) ;
 int stub1 (struct uart_port*,int ) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static void dw8250_force_idle(struct uart_port *p)
{
 struct uart_8250_port *up = up_to_u8250p(p);

 serial8250_clear_and_reinit_fifos(up);
 (void)p->serial_in(p, UART_RX);
}
