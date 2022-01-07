
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct knav_range_info {TYPE_1__* ops; } ;
struct knav_queue_inst {TYPE_2__* kdev; struct knav_range_info* range; } ;
struct knav_queue {int stats; int list; int notifier_enabled; struct knav_queue_inst* inst; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int (* close_queue ) (struct knav_range_info*,struct knav_queue_inst*) ;} ;


 scalar_t__ atomic_read (int *) ;
 int devm_kfree (int ,struct knav_queue*) ;
 int free_percpu (int ) ;
 int knav_dev_lock ;
 int knav_queue_disable_notifier (struct knav_queue*) ;
 int knav_queue_is_busy (struct knav_queue_inst*) ;
 int list_del_rcu (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct knav_range_info*,struct knav_queue_inst*) ;
 int synchronize_rcu () ;

void knav_queue_close(void *qhandle)
{
 struct knav_queue *qh = qhandle;
 struct knav_queue_inst *inst = qh->inst;

 while (atomic_read(&qh->notifier_enabled) > 0)
  knav_queue_disable_notifier(qh);

 mutex_lock(&knav_dev_lock);
 list_del_rcu(&qh->list);
 mutex_unlock(&knav_dev_lock);
 synchronize_rcu();
 if (!knav_queue_is_busy(inst)) {
  struct knav_range_info *range = inst->range;

  if (range->ops && range->ops->close_queue)
   range->ops->close_queue(range, inst);
 }
 free_percpu(qh->stats);
 devm_kfree(inst->kdev->dev, qh);
}
