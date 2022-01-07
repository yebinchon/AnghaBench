
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int read_status_mask; } ;
struct uart_8250_port {int ier; TYPE_1__ port; } ;


 int UART_IER ;
 int UART_IER_RDI ;
 int UART_IER_RLSI ;
 int UART_LSR_DR ;
 int serial8250_rpm_get (struct uart_8250_port*) ;
 int serial8250_rpm_put (struct uart_8250_port*) ;
 int serial_port_out (struct uart_port*,int ,int) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static void serial8250_stop_rx(struct uart_port *port)
{
 struct uart_8250_port *up = up_to_u8250p(port);

 serial8250_rpm_get(up);

 up->ier &= ~(UART_IER_RLSI | UART_IER_RDI);
 up->port.read_status_mask &= ~UART_LSR_DR;
 serial_port_out(port, UART_IER, up->ier);

 serial8250_rpm_put(up);
}
