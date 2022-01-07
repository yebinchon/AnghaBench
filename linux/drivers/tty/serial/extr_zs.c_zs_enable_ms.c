
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zs_scc {int zlock; struct zs_port* zport; } ;
struct zs_port {int* regs; struct zs_scc* scc; } ;
struct uart_port {int dummy; } ;


 int CTSIE ;
 int DCDIE ;
 int EXT_INT_ENAB ;
 int R0 ;
 int R1 ;
 int R15 ;
 int RES_EXT_INT ;
 int SYNCIE ;
 size_t ZS_CHAN_A ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct zs_port* to_zport (struct uart_port*) ;
 int write_zsreg (struct zs_port*,int ,int) ;
 int zs_raw_xor_mctrl (struct zs_port*) ;

__attribute__((used)) static void zs_enable_ms(struct uart_port *uport)
{
 struct zs_port *zport = to_zport(uport);
 struct zs_scc *scc = zport->scc;
 struct zs_port *zport_a = &scc->zport[ZS_CHAN_A];

 if (zport == zport_a)
  return;

 spin_lock(&scc->zlock);


 if (!(zport_a->regs[1] & EXT_INT_ENAB))
  write_zsreg(zport_a, R0, RES_EXT_INT);


 zport_a->regs[1] |= EXT_INT_ENAB;
 zport_a->regs[15] |= DCDIE | SYNCIE;


 zport->regs[15] |= DCDIE | CTSIE;

 zs_raw_xor_mctrl(zport);

 write_zsreg(zport_a, R1, zport_a->regs[1]);
 write_zsreg(zport_a, R15, zport_a->regs[15]);
 write_zsreg(zport, R15, zport->regs[15]);
 spin_unlock(&scc->zlock);
}
