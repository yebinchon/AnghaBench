
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int lock; } ;
struct TYPE_2__ {int (* command ) (struct uart_port*,int ) ;} ;


 int MPC52xx_PSC_START_BRK ;
 int MPC52xx_PSC_STOP_BRK ;
 TYPE_1__* psc_ops ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct uart_port*,int ) ;
 int stub2 (struct uart_port*,int ) ;

__attribute__((used)) static void
mpc52xx_uart_break_ctl(struct uart_port *port, int ctl)
{
 unsigned long flags;
 spin_lock_irqsave(&port->lock, flags);

 if (ctl == -1)
  psc_ops->command(port, MPC52xx_PSC_START_BRK);
 else
  psc_ops->command(port, MPC52xx_PSC_STOP_BRK);

 spin_unlock_irqrestore(&port->lock, flags);
}
