
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int dummy; } ;


 int OWL_UART_CTL ;
 int OWL_UART_CTL_TXIE ;
 int OWL_UART_STAT ;
 int OWL_UART_STAT_TIP ;
 int owl_uart_read (struct uart_port*,int ) ;
 int owl_uart_stop_tx (struct uart_port*) ;
 int owl_uart_write (struct uart_port*,int ,int ) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;

__attribute__((used)) static void owl_uart_start_tx(struct uart_port *port)
{
 u32 val;

 if (uart_tx_stopped(port)) {
  owl_uart_stop_tx(port);
  return;
 }

 val = owl_uart_read(port, OWL_UART_STAT);
 val |= OWL_UART_STAT_TIP;
 owl_uart_write(port, val, OWL_UART_STAT);

 val = owl_uart_read(port, OWL_UART_CTL);
 val |= OWL_UART_CTL_TXIE;
 owl_uart_write(port, val, OWL_UART_CTL);
}
