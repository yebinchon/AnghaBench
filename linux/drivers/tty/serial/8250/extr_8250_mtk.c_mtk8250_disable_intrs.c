
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int dummy; } ;


 int UART_IER ;
 int serial_in (struct uart_8250_port*,int ) ;
 int serial_out (struct uart_8250_port*,int ,int) ;

__attribute__((used)) static void mtk8250_disable_intrs(struct uart_8250_port *up, int mask)
{
 serial_out(up, UART_IER, serial_in(up, UART_IER) & (~mask));
}
