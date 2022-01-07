
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct uart_pmac_port {TYPE_1__ port; int * curregs; } ;


 int DTR ;
 size_t R5 ;
 int msleep (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_zsreg (struct uart_pmac_port*,size_t,int ) ;
 int zssync (struct uart_pmac_port*) ;

__attribute__((used)) static void pmz_irda_reset(struct uart_pmac_port *uap)
{
 unsigned long flags;

 spin_lock_irqsave(&uap->port.lock, flags);
 uap->curregs[R5] |= DTR;
 write_zsreg(uap, R5, uap->curregs[R5]);
 zssync(uap);
 spin_unlock_irqrestore(&uap->port.lock, flags);
 msleep(110);

 spin_lock_irqsave(&uap->port.lock, flags);
 uap->curregs[R5] &= ~DTR;
 write_zsreg(uap, R5, uap->curregs[R5]);
 zssync(uap);
 spin_unlock_irqrestore(&uap->port.lock, flags);
 msleep(10);
}
