
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 unsigned int TIOCSER_TEMT ;
 scalar_t__ asc_txfifo_is_empty (struct uart_port*) ;

__attribute__((used)) static unsigned int asc_tx_empty(struct uart_port *port)
{
 return asc_txfifo_is_empty(port) ? TIOCSER_TEMT : 0;
}
