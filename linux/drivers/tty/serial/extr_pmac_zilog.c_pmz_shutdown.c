
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int lock; } ;
struct TYPE_2__ {int irq; } ;
struct uart_pmac_port {int flags; TYPE_1__ port; int * curregs; } ;


 int PMACZILOG_FLAG_IS_OPEN ;
 size_t R3 ;
 size_t R5 ;
 int RxENABLE ;
 int SND_BRK ;
 int TxENABLE ;
 int ZS_IS_CONS (struct uart_pmac_port*) ;
 int free_irq (int ,struct uart_pmac_port*) ;
 int pmz_debug (char*) ;
 int pmz_interrupt_control (struct uart_pmac_port*,int ) ;
 int pmz_maybe_update_regs (struct uart_pmac_port*) ;
 int pmz_set_scc_power (struct uart_pmac_port*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct uart_pmac_port* to_pmz (struct uart_port*) ;

__attribute__((used)) static void pmz_shutdown(struct uart_port *port)
{
 struct uart_pmac_port *uap = to_pmz(port);
 unsigned long flags;

 pmz_debug("pmz: shutdown()\n");

 spin_lock_irqsave(&port->lock, flags);


 pmz_interrupt_control(uap, 0);

 if (!ZS_IS_CONS(uap)) {

  uap->curregs[R3] &= ~RxENABLE;
  uap->curregs[R5] &= ~TxENABLE;


  uap->curregs[R5] &= ~SND_BRK;
  pmz_maybe_update_regs(uap);
 }

 spin_unlock_irqrestore(&port->lock, flags);


 free_irq(uap->port.irq, uap);

 spin_lock_irqsave(&port->lock, flags);

 uap->flags &= ~PMACZILOG_FLAG_IS_OPEN;

 if (!ZS_IS_CONS(uap))
  pmz_set_scc_power(uap, 0);

 spin_unlock_irqrestore(&port->lock, flags);

 pmz_debug("pmz: shutdown() done.\n");
}
