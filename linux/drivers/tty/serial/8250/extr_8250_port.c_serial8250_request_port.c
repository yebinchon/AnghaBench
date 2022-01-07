
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct uart_8250_port {int dummy; } ;


 int serial8250_request_std_resource (struct uart_8250_port*) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static int serial8250_request_port(struct uart_port *port)
{
 struct uart_8250_port *up = up_to_u8250p(port);

 return serial8250_request_std_resource(up);
}
