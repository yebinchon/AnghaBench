
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int transport_state; int t_state_lock; int t_state; } ;


 int CMD_T_ACTIVE ;
 int CMD_T_SENT ;
 int TRANSPORT_PROCESSING ;
 int __target_execute_cmd (struct se_cmd*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ target_cmd_interrupted (struct se_cmd*) ;
 scalar_t__ target_handle_task_attr (struct se_cmd*) ;
 scalar_t__ target_write_prot_action (struct se_cmd*) ;

void target_execute_cmd(struct se_cmd *cmd)
{






 if (target_cmd_interrupted(cmd))
  return;

 spin_lock_irq(&cmd->t_state_lock);
 cmd->t_state = TRANSPORT_PROCESSING;
 cmd->transport_state |= CMD_T_ACTIVE | CMD_T_SENT;
 spin_unlock_irq(&cmd->t_state_lock);

 if (target_write_prot_action(cmd))
  return;

 if (target_handle_task_attr(cmd)) {
  spin_lock_irq(&cmd->t_state_lock);
  cmd->transport_state &= ~CMD_T_SENT;
  spin_unlock_irq(&cmd->t_state_lock);
  return;
 }

 __target_execute_cmd(cmd, 1);
}
