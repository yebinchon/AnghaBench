
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_5__ {TYPE_1__* host; } ;
struct sym_hcb {TYPE_2__ s; } ;
struct TYPE_6__ {int timer; } ;
struct TYPE_4__ {int host_lock; } ;


 struct sym_hcb* from_timer (int ,struct timer_list*,int ) ;
 struct sym_hcb* np ;
 TYPE_3__ s ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int sym_timer (struct sym_hcb*) ;

__attribute__((used)) static void sym53c8xx_timer(struct timer_list *t)
{
 struct sym_hcb *np = from_timer(np, t, s.timer);
 unsigned long flags;

 spin_lock_irqsave(np->s.host->host_lock, flags);
 sym_timer(np);
 spin_unlock_irqrestore(np->s.host->host_lock, flags);
}
