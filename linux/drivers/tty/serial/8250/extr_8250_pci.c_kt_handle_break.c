
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct uart_8250_port {int dummy; } ;


 int serial8250_clear_and_reinit_fifos (struct uart_8250_port*) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static void kt_handle_break(struct uart_port *p)
{
 struct uart_8250_port *up = up_to_u8250p(p);





 serial8250_clear_and_reinit_fifos(up);
}
