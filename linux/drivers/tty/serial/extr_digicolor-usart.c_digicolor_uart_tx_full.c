
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 scalar_t__ UA_STATUS_FIFO ;
 int UA_STATUS_FIFO_TX_FULL ;
 int readb_relaxed (scalar_t__) ;

__attribute__((used)) static bool digicolor_uart_tx_full(struct uart_port *port)
{
 return !!(readb_relaxed(port->membase + UA_STATUS_FIFO) &
    UA_STATUS_FIFO_TX_FULL);
}
