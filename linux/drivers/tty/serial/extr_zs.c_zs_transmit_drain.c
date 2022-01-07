
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zs_scc {int zlock; } ;
struct zs_port {struct zs_scc* scc; } ;


 int R0 ;
 int Tx_BUF_EMP ;
 int read_zsreg (struct zs_port*,int ) ;
 int udelay (int) ;
 int zs_spin_lock_cond_irq (int *,int) ;
 int zs_spin_unlock_cond_irq (int *,int) ;

__attribute__((used)) static int zs_transmit_drain(struct zs_port *zport, int irq)
{
 struct zs_scc *scc = zport->scc;
 int loops = 10000;

 while (!(read_zsreg(zport, R0) & Tx_BUF_EMP) && --loops) {
  zs_spin_unlock_cond_irq(&scc->zlock, irq);
  udelay(2);
  zs_spin_lock_cond_irq(&scc->zlock, irq);
 }
 return loops;
}
