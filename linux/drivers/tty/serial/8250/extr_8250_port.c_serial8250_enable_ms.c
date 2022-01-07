
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct uart_8250_port {int bugs; int ier; int gpios; } ;


 int UART_BUG_NOMSR ;
 int UART_IER ;
 int UART_IER_MSI ;
 int mctrl_gpio_enable_ms (int ) ;
 int serial8250_rpm_get (struct uart_8250_port*) ;
 int serial8250_rpm_put (struct uart_8250_port*) ;
 int serial_port_out (struct uart_port*,int ,int ) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static void serial8250_enable_ms(struct uart_port *port)
{
 struct uart_8250_port *up = up_to_u8250p(port);


 if (up->bugs & UART_BUG_NOMSR)
  return;

 mctrl_gpio_enable_ms(up->gpios);

 up->ier |= UART_IER_MSI;

 serial8250_rpm_get(up);
 serial_port_out(port, UART_IER, up->ier);
 serial8250_rpm_put(up);
}
