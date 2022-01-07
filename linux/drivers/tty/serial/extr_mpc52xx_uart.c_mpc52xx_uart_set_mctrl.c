
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int (* set_rts ) (struct uart_port*,unsigned int) ;} ;


 unsigned int TIOCM_RTS ;
 TYPE_1__* psc_ops ;
 int stub1 (struct uart_port*,unsigned int) ;

__attribute__((used)) static void
mpc52xx_uart_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 psc_ops->set_rts(port, mctrl & TIOCM_RTS);
}
