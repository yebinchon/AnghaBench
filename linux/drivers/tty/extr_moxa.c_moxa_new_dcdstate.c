
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int lock; } ;
struct moxa_port {int DCDState; TYPE_1__ port; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_port_tty_hangup (TYPE_1__*,int) ;

__attribute__((used)) static void moxa_new_dcdstate(struct moxa_port *p, u8 dcd)
{
 unsigned long flags;
 dcd = !!dcd;

 spin_lock_irqsave(&p->port.lock, flags);
 if (dcd != p->DCDState) {
         p->DCDState = dcd;
         spin_unlock_irqrestore(&p->port.lock, flags);
  if (!dcd)
   tty_port_tty_hangup(&p->port, 1);
 }
 else
  spin_unlock_irqrestore(&p->port.lock, flags);
}
