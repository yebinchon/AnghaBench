
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zs_scc {int zlock; struct zs_port* zport; } ;
struct zs_port {int * regs; struct zs_scc* scc; } ;
struct uart_port {int dummy; } ;


 int DTR ;
 int LOOPBAK ;
 int R14 ;
 int R5 ;
 int RTS ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_LOOP ;
 unsigned int TIOCM_RTS ;
 size_t ZS_CHAN_A ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct zs_port* to_zport (struct uart_port*) ;
 int write_zsreg (struct zs_port*,int ,int ) ;

__attribute__((used)) static void zs_set_mctrl(struct uart_port *uport, unsigned int mctrl)
{
 struct zs_port *zport = to_zport(uport);
 struct zs_scc *scc = zport->scc;
 struct zs_port *zport_a = &scc->zport[ZS_CHAN_A];
 u8 oldloop, newloop;

 spin_lock(&scc->zlock);
 if (zport != zport_a) {
  if (mctrl & TIOCM_DTR)
   zport_a->regs[5] |= DTR;
  else
   zport_a->regs[5] &= ~DTR;
  if (mctrl & TIOCM_RTS)
   zport_a->regs[5] |= RTS;
  else
   zport_a->regs[5] &= ~RTS;
  write_zsreg(zport_a, R5, zport_a->regs[5]);
 }


 oldloop = zport->regs[14];
 newloop = oldloop;
 if (mctrl & TIOCM_LOOP)
  newloop |= LOOPBAK;
 else
  newloop &= ~LOOPBAK;
 if (newloop != oldloop) {
  zport->regs[14] = newloop;
  write_zsreg(zport, R14, zport->regs[14]);
 }
 spin_unlock(&scc->zlock);
}
