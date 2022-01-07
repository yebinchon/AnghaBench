
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int dummy; } ;


 int OWL_UART_CTL ;
 int OWL_UART_CTL_RXDE ;
 int OWL_UART_CTL_RXIE ;
 int OWL_UART_STAT ;
 int OWL_UART_STAT_RIP ;
 int owl_uart_read (struct uart_port*,int ) ;
 int owl_uart_write (struct uart_port*,int,int ) ;

__attribute__((used)) static void owl_uart_stop_rx(struct uart_port *port)
{
 u32 val;

 val = owl_uart_read(port, OWL_UART_CTL);
 val &= ~(OWL_UART_CTL_RXIE | OWL_UART_CTL_RXDE);
 owl_uart_write(port, val, OWL_UART_CTL);

 val = owl_uart_read(port, OWL_UART_STAT);
 val |= OWL_UART_STAT_RIP;
 owl_uart_write(port, val, OWL_UART_STAT);
}
