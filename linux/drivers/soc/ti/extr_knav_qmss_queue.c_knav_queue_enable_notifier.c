
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knav_queue_inst {int num_notifiers; } ;
struct knav_queue {int notifier_enabled; int notifier_fn; struct knav_queue_inst* inst; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int atomic_inc_return (int *) ;
 int knav_queue_set_notify (struct knav_queue_inst*,int) ;

__attribute__((used)) static int knav_queue_enable_notifier(struct knav_queue *qh)
{
 struct knav_queue_inst *inst = qh->inst;
 bool first;

 if (WARN_ON(!qh->notifier_fn))
  return -EINVAL;


 first = (atomic_inc_return(&qh->notifier_enabled) == 1);
 if (!first)
  return 0;


 first = (atomic_inc_return(&inst->num_notifiers) == 1);
 if (first)
  knav_queue_set_notify(inst, 1);

 return 0;
}
