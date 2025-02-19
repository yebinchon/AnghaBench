
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 scalar_t__ CDNS_UART_CR ;
 unsigned int CDNS_UART_CR_TX_DIS ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void cdns_uart_stop_tx(struct uart_port *port)
{
 unsigned int regval;

 regval = readl(port->membase + CDNS_UART_CR);
 regval |= CDNS_UART_CR_TX_DIS;

 writel(regval, port->membase + CDNS_UART_CR);
}
