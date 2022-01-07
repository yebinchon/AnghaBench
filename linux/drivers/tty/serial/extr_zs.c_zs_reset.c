
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zs_scc {int initialised; int zlock; } ;
struct zs_port {int regs; struct zs_scc* scc; } ;


 int FHWRES ;
 int R0 ;
 int R9 ;
 int irqs_disabled_flags (unsigned long) ;
 int load_zsregs (struct zs_port*,int ,int) ;
 int read_zsreg (struct zs_port*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;
 int write_zsreg (struct zs_port*,int ,int ) ;
 int zs_line_drain (struct zs_port*,int) ;

__attribute__((used)) static void zs_reset(struct zs_port *zport)
{
 struct zs_scc *scc = zport->scc;
 int irq;
 unsigned long flags;

 spin_lock_irqsave(&scc->zlock, flags);
 irq = !irqs_disabled_flags(flags);
 if (!scc->initialised) {

  read_zsreg(zport, R0);

  zs_line_drain(zport, irq);
  write_zsreg(zport, R9, FHWRES);
  udelay(10);
  write_zsreg(zport, R9, 0);
  scc->initialised = 1;
 }
 load_zsregs(zport, zport->regs, irq);
 spin_unlock_irqrestore(&scc->zlock, flags);
}
