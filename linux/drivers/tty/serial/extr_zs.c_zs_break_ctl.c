
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zs_scc {int zlock; } ;
struct zs_port {int * regs; struct zs_scc* scc; } ;
struct uart_port {int dummy; } ;


 int R5 ;
 int SND_BRK ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct zs_port* to_zport (struct uart_port*) ;
 int write_zsreg (struct zs_port*,int ,int ) ;

__attribute__((used)) static void zs_break_ctl(struct uart_port *uport, int break_state)
{
 struct zs_port *zport = to_zport(uport);
 struct zs_scc *scc = zport->scc;
 unsigned long flags;

 spin_lock_irqsave(&scc->zlock, flags);
 if (break_state == -1)
  zport->regs[5] |= SND_BRK;
 else
  zport->regs[5] &= ~SND_BRK;
 write_zsreg(zport, R5, zport->regs[5]);
 spin_unlock_irqrestore(&scc->zlock, flags);
}
