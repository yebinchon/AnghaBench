
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int UART_RX_IRQ_DISABLE (struct uart_port*) ;

__attribute__((used)) static void arc_serial_stop_rx(struct uart_port *port)
{
 UART_RX_IRQ_DISABLE(port);
}
