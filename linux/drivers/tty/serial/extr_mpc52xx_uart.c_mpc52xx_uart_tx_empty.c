
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* tx_empty ) (struct uart_port*) ;} ;


 unsigned int TIOCSER_TEMT ;
 TYPE_1__* psc_ops ;
 scalar_t__ stub1 (struct uart_port*) ;

__attribute__((used)) static unsigned int
mpc52xx_uart_tx_empty(struct uart_port *port)
{
 return psc_ops->tx_empty(port) ? TIOCSER_TEMT : 0;
}
