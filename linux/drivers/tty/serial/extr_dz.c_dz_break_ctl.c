
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int lock; } ;
struct TYPE_2__ {int line; } ;
struct dz_port {TYPE_1__ port; } ;


 int DZ_TCR ;
 unsigned short dz_in (struct dz_port*,int ) ;
 int dz_out (struct dz_port*,int ,unsigned short) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct dz_port* to_dport (struct uart_port*) ;

__attribute__((used)) static void dz_break_ctl(struct uart_port *uport, int break_state)
{




 struct dz_port *dport = to_dport(uport);
 unsigned long flags;
 unsigned short tmp, mask = 1 << dport->port.line;

 spin_lock_irqsave(&uport->lock, flags);
 tmp = dz_in(dport, DZ_TCR);
 if (break_state)
  tmp |= mask;
 else
  tmp &= ~mask;
 dz_out(dport, DZ_TCR, tmp);
 spin_unlock_irqrestore(&uport->lock, flags);
}
