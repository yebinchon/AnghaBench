
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_pxa_port {int ier; } ;
struct uart_port {int dummy; } ;


 int UART_IER ;
 int UART_IER_MSI ;
 int serial_out (struct uart_pxa_port*,int ,int ) ;

__attribute__((used)) static void serial_pxa_enable_ms(struct uart_port *port)
{
 struct uart_pxa_port *up = (struct uart_pxa_port *)port;

 up->ier |= UART_IER_MSI;
 serial_out(up, UART_IER, up->ier);
}
