
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct subchannel {int schid; int lock; scalar_t__ lpm; TYPE_1__* driver; } ;
struct TYPE_2__ {scalar_t__ (* chp_event ) (struct subchannel*,void*,int ) ;} ;


 int CHP_OFFLINE ;
 int css_schedule_eval (int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 scalar_t__ stub1 (struct subchannel*,void*,int ) ;

__attribute__((used)) static int s390_subchannel_remove_chpid(struct subchannel *sch, void *data)
{
 spin_lock_irq(sch->lock);
 if (sch->driver && sch->driver->chp_event)
  if (sch->driver->chp_event(sch, data, CHP_OFFLINE) != 0)
   goto out_unreg;
 spin_unlock_irq(sch->lock);
 return 0;

out_unreg:
 sch->lpm = 0;
 spin_unlock_irq(sch->lock);
 css_schedule_eval(sch->schid);
 return 0;
}
