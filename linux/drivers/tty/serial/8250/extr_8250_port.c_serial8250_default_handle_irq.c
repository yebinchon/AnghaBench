
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct uart_8250_port {int dummy; } ;


 int UART_IIR ;
 int serial8250_handle_irq (struct uart_port*,unsigned int) ;
 int serial8250_rpm_get (struct uart_8250_port*) ;
 int serial8250_rpm_put (struct uart_8250_port*) ;
 unsigned int serial_port_in (struct uart_port*,int ) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static int serial8250_default_handle_irq(struct uart_port *port)
{
 struct uart_8250_port *up = up_to_u8250p(port);
 unsigned int iir;
 int ret;

 serial8250_rpm_get(up);

 iir = serial_port_in(port, UART_IIR);
 ret = serial8250_handle_irq(port, iir);

 serial8250_rpm_put(up);
 return ret;
}
