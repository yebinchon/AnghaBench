
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int read_status_mask; } ;
struct uart_txx9_port {TYPE_1__ port; } ;
struct uart_port {int dummy; } ;


 int TXX9_SIDISR_RDIS ;
 struct uart_txx9_port* to_uart_txx9_port (struct uart_port*) ;

__attribute__((used)) static void serial_txx9_stop_rx(struct uart_port *port)
{
 struct uart_txx9_port *up = to_uart_txx9_port(port);
 up->port.read_status_mask &= ~TXX9_SIDISR_RDIS;
}
