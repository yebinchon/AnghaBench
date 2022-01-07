
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 scalar_t__ CDNS_UART_SR ;
 unsigned int CDNS_UART_SR_TXEMPTY ;
 unsigned int TIOCSER_TEMT ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static unsigned int cdns_uart_tx_empty(struct uart_port *port)
{
 unsigned int status;

 status = readl(port->membase + CDNS_UART_SR) &
    CDNS_UART_SR_TXEMPTY;
 return status ? TIOCSER_TEMT : 0;
}
