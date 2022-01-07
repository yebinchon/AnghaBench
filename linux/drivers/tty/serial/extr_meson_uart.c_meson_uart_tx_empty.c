
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {scalar_t__ membase; } ;


 scalar_t__ AML_UART_STATUS ;
 int AML_UART_TX_EMPTY ;
 int AML_UART_XMIT_BUSY ;
 unsigned int TIOCSER_TEMT ;
 int readl (scalar_t__) ;

__attribute__((used)) static unsigned int meson_uart_tx_empty(struct uart_port *port)
{
 u32 val;

 val = readl(port->membase + AML_UART_STATUS);
 val &= (AML_UART_TX_EMPTY | AML_UART_XMIT_BUSY);
 return (val == AML_UART_TX_EMPTY) ? TIOCSER_TEMT : 0;
}
