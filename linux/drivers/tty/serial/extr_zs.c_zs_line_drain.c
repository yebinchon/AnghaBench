
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zs_scc {int zlock; } ;
struct zs_port {struct zs_scc* scc; } ;


 int ALL_SNT ;
 int R1 ;
 int read_zsreg (struct zs_port*,int ) ;
 int udelay (int) ;
 int zs_spin_lock_cond_irq (int *,int) ;
 int zs_spin_unlock_cond_irq (int *,int) ;

__attribute__((used)) static int zs_line_drain(struct zs_port *zport, int irq)
{
 struct zs_scc *scc = zport->scc;
 int loops = 10000;

 while (!(read_zsreg(zport, R1) & ALL_SNT) && --loops) {
  zs_spin_unlock_cond_irq(&scc->zlock, irq);
  udelay(2);
  zs_spin_lock_cond_irq(&scc->zlock, irq);
 }
 return loops;
}
