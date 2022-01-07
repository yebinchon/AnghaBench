
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_pmac_port {int curregs; int flags; } ;


 int PMACZILOG_FLAG_REGS_HELD ;
 int ZS_REGS_HELD (struct uart_pmac_port*) ;
 scalar_t__ ZS_TX_ACTIVE (struct uart_pmac_port*) ;
 int pmz_debug (char*) ;
 int pmz_load_zsregs (struct uart_pmac_port*,int ) ;

__attribute__((used)) static void pmz_maybe_update_regs(struct uart_pmac_port *uap)
{
 if (!ZS_REGS_HELD(uap)) {
  if (ZS_TX_ACTIVE(uap)) {
   uap->flags |= PMACZILOG_FLAG_REGS_HELD;
  } else {
   pmz_debug("pmz: maybe_update_regs: updating\n");
   pmz_load_zsregs(uap, uap->curregs);
  }
 }
}
