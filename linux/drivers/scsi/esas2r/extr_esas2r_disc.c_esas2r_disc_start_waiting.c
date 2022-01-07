
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ disc_evt; } ;
struct esas2r_adapter {int mem_lock; TYPE_1__ disc_ctx; } ;


 int esas2r_disc_start_port (struct esas2r_adapter*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void esas2r_disc_start_waiting(struct esas2r_adapter *a)
{
 unsigned long flags;

 spin_lock_irqsave(&a->mem_lock, flags);

 if (a->disc_ctx.disc_evt)
  esas2r_disc_start_port(a);

 spin_unlock_irqrestore(&a->mem_lock, flags);
}
