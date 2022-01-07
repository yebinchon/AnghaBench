
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_device {int execute_task_lock; int state_list; } ;
struct se_cmd {int state_active; int state_list; struct se_device* se_dev; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void target_add_to_state_list(struct se_cmd *cmd)
{
 struct se_device *dev = cmd->se_dev;
 unsigned long flags;

 spin_lock_irqsave(&dev->execute_task_lock, flags);
 if (!cmd->state_active) {
  list_add_tail(&cmd->state_list, &dev->state_list);
  cmd->state_active = 1;
 }
 spin_unlock_irqrestore(&dev->execute_task_lock, flags);
}
