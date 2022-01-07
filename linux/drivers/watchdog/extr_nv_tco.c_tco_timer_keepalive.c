
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCO_RLD (int ) ;
 int outb (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tco_lock ;
 int tcobase ;

__attribute__((used)) static void tco_timer_keepalive(void)
{
 unsigned long flags;

 spin_lock_irqsave(&tco_lock, flags);
 outb(0x01, TCO_RLD(tcobase));
 spin_unlock_irqrestore(&tco_lock, flags);
}
