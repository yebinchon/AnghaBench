
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idset {int dummy; } ;


 int __unset_registered ;
 int atomic_set (int *,int) ;
 int bus_for_each_dev (int *,int *,struct idset*,int ) ;
 int cio_work_q ;
 int css_bus_type ;
 int css_eval_scheduled ;
 int css_schedule_eval_all () ;
 int idset_add_set (int ,struct idset*) ;
 int idset_fill (struct idset*) ;
 int idset_free (struct idset*) ;
 struct idset* idset_sch_new () ;
 int queue_delayed_work (int ,int *,unsigned long) ;
 int slow_path_work ;
 int slow_subchannel_lock ;
 int slow_subchannel_set ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void css_schedule_eval_all_unreg(unsigned long delay)
{
 unsigned long flags;
 struct idset *unreg_set;


 unreg_set = idset_sch_new();
 if (!unreg_set) {

  css_schedule_eval_all();
  return;
 }
 idset_fill(unreg_set);
 bus_for_each_dev(&css_bus_type, ((void*)0), unreg_set, __unset_registered);

 spin_lock_irqsave(&slow_subchannel_lock, flags);
 idset_add_set(slow_subchannel_set, unreg_set);
 atomic_set(&css_eval_scheduled, 1);
 queue_delayed_work(cio_work_q, &slow_path_work, delay);
 spin_unlock_irqrestore(&slow_subchannel_lock, flags);
 idset_free(unreg_set);
}
