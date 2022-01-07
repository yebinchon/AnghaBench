
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int SCxSR ;
 unsigned short SCxSR_TEND (struct uart_port*) ;
 unsigned int TIOCSER_TEMT ;
 unsigned short sci_txfill (struct uart_port*) ;
 unsigned short serial_port_in (struct uart_port*,int ) ;

__attribute__((used)) static unsigned int sci_tx_empty(struct uart_port *port)
{
 unsigned short status = serial_port_in(port, SCxSR);
 unsigned short in_tx_fifo = sci_txfill(port);

 return (status & SCxSR_TEND(port)) && !in_tx_fifo ? TIOCSER_TEMT : 0;
}
