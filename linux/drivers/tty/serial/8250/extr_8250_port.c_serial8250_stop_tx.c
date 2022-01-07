
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ type; } ;
struct uart_8250_port {int acr; } ;


 scalar_t__ PORT_16C950 ;
 int UART_ACR ;
 int UART_ACR_TXDIS ;
 int __stop_tx (struct uart_8250_port*) ;
 int serial8250_rpm_get (struct uart_8250_port*) ;
 int serial8250_rpm_put (struct uart_8250_port*) ;
 int serial_icr_write (struct uart_8250_port*,int ,int ) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static void serial8250_stop_tx(struct uart_port *port)
{
 struct uart_8250_port *up = up_to_u8250p(port);

 serial8250_rpm_get(up);
 __stop_tx(up);




 if (port->type == PORT_16C950) {
  up->acr |= UART_ACR_TXDIS;
  serial_icr_write(up, UART_ACR, up->acr);
 }
 serial8250_rpm_put(up);
}
