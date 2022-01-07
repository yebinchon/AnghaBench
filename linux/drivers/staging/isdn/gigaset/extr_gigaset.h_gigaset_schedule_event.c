
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardstate {int lock; int event_tasklet; scalar_t__ running; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static inline void gigaset_schedule_event(struct cardstate *cs)
{
 unsigned long flags;
 spin_lock_irqsave(&cs->lock, flags);
 if (cs->running)
  tasklet_schedule(&cs->event_tasklet);
 spin_unlock_irqrestore(&cs->lock, flags);
}
