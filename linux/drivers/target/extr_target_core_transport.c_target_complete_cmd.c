
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct se_cmd {int scsi_status; int se_cmd_flags; int transport_state; int work; int cpuid; int t_state_lock; int t_state; } ;


 int CMD_T_ACTIVE ;
 int CMD_T_COMPLETE ;
 int INIT_WORK (int *,int ) ;

 int SCF_TRANSPORT_TASK_SENSE ;
 int SCF_USE_CPUID ;
 int TRANSPORT_COMPLETE ;
 int queue_work (int ,int *) ;
 int queue_work_on (int ,int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ target_cmd_interrupted (struct se_cmd*) ;
 int target_complete_failure_work ;
 int target_complete_ok_work ;
 int target_completion_wq ;

void target_complete_cmd(struct se_cmd *cmd, u8 scsi_status)
{
 int success;
 unsigned long flags;

 if (target_cmd_interrupted(cmd))
  return;

 cmd->scsi_status = scsi_status;

 spin_lock_irqsave(&cmd->t_state_lock, flags);
 switch (cmd->scsi_status) {
 case 128:
  if (cmd->se_cmd_flags & SCF_TRANSPORT_TASK_SENSE)
   success = 1;
  else
   success = 0;
  break;
 default:
  success = 1;
  break;
 }

 cmd->t_state = TRANSPORT_COMPLETE;
 cmd->transport_state |= (CMD_T_COMPLETE | CMD_T_ACTIVE);
 spin_unlock_irqrestore(&cmd->t_state_lock, flags);

 INIT_WORK(&cmd->work, success ? target_complete_ok_work :
    target_complete_failure_work);
 if (cmd->se_cmd_flags & SCF_USE_CPUID)
  queue_work_on(cmd->cpuid, target_completion_wq, &cmd->work);
 else
  queue_work(target_completion_wq, &cmd->work);
}
