
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 scalar_t__ MCFUART_USR ;
 int MCFUART_USR_TXEMPTY ;
 unsigned int TIOCSER_TEMT ;
 int readb (scalar_t__) ;

__attribute__((used)) static unsigned int mcf_tx_empty(struct uart_port *port)
{
 return (readb(port->membase + MCFUART_USR) & MCFUART_USR_TXEMPTY) ?
  TIOCSER_TEMT : 0;
}
