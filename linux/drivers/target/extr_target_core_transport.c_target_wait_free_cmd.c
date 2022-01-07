
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int t_state_lock; } ;


 int __transport_wait_for_tasks (struct se_cmd*,int,int*,int*,unsigned long*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void target_wait_free_cmd(struct se_cmd *cmd, bool *aborted, bool *tas)
{
 unsigned long flags;

 spin_lock_irqsave(&cmd->t_state_lock, flags);
 __transport_wait_for_tasks(cmd, 1, aborted, tas, &flags);
 spin_unlock_irqrestore(&cmd->t_state_lock, flags);
}
