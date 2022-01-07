
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int dummy; } ;


 int RDA_UART_IRQ_MASK ;
 int RDA_UART_TX_DATA_NEEDED ;
 int rda_uart_read (struct uart_port*,int ) ;
 int rda_uart_stop_tx (struct uart_port*) ;
 int rda_uart_write (struct uart_port*,int ,int ) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;

__attribute__((used)) static void rda_uart_start_tx(struct uart_port *port)
{
 u32 val;

 if (uart_tx_stopped(port)) {
  rda_uart_stop_tx(port);
  return;
 }

 val = rda_uart_read(port, RDA_UART_IRQ_MASK);
 val |= RDA_UART_TX_DATA_NEEDED;
 rda_uart_write(port, val, RDA_UART_IRQ_MASK);
}
