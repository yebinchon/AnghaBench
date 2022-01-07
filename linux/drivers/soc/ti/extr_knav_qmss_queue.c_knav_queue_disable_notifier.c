
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knav_queue_inst {int num_notifiers; } ;
struct knav_queue {int notifier_enabled; struct knav_queue_inst* inst; } ;


 scalar_t__ atomic_dec_return (int *) ;
 int knav_queue_set_notify (struct knav_queue_inst*,int) ;

__attribute__((used)) static int knav_queue_disable_notifier(struct knav_queue *qh)
{
 struct knav_queue_inst *inst = qh->inst;
 bool last;

 last = (atomic_dec_return(&qh->notifier_enabled) == 0);
 if (!last)
  return 0;

 last = (atomic_dec_return(&inst->num_notifiers) == 0);
 if (last)
  knav_queue_set_notify(inst, 0);

 return 0;
}
