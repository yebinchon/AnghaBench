
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fnic {unsigned long state_flags; int fnic_lock; TYPE_2__* lport; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int * host_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
__fnic_set_state_flags(struct fnic *fnic, unsigned long st_flags,
   unsigned long clearbits)
{
 unsigned long flags = 0;
 unsigned long host_lock_flags = 0;

 spin_lock_irqsave(&fnic->fnic_lock, flags);
 spin_lock_irqsave(fnic->lport->host->host_lock, host_lock_flags);

 if (clearbits)
  fnic->state_flags &= ~st_flags;
 else
  fnic->state_flags |= st_flags;

 spin_unlock_irqrestore(fnic->lport->host->host_lock, host_lock_flags);
 spin_unlock_irqrestore(&fnic->fnic_lock, flags);

 return;
}
