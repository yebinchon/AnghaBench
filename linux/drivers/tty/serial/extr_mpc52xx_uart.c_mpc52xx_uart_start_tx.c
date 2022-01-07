
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int (* start_tx ) (struct uart_port*) ;} ;


 TYPE_1__* psc_ops ;
 int stub1 (struct uart_port*) ;

__attribute__((used)) static void
mpc52xx_uart_start_tx(struct uart_port *port)
{

 psc_ops->start_tx(port);
}
