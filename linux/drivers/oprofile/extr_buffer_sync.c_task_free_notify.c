
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int tasks; } ;
struct notifier_block {int dummy; } ;


 int NOTIFY_OK ;
 int dying_tasks ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int task_mortuary ;

__attribute__((used)) static int
task_free_notify(struct notifier_block *self, unsigned long val, void *data)
{
 unsigned long flags;
 struct task_struct *task = data;
 spin_lock_irqsave(&task_mortuary, flags);
 list_add(&task->tasks, &dying_tasks);
 spin_unlock_irqrestore(&task_mortuary, flags);
 return NOTIFY_OK;
}
