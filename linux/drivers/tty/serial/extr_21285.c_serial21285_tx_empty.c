
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int* CSR_UARTFLG ;
 unsigned int TIOCSER_TEMT ;

__attribute__((used)) static unsigned int serial21285_tx_empty(struct uart_port *port)
{
 return (*CSR_UARTFLG & 8) ? 0 : TIOCSER_TEMT;
}
