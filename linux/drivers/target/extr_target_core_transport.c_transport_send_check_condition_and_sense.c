
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_cmd {int se_cmd_flags; TYPE_1__* se_tfo; int t_state_lock; } ;
typedef int sense_reason_t ;
struct TYPE_2__ {int (* queue_status ) (struct se_cmd*) ;} ;


 int SCF_SCSI_TMR_CDB ;
 int SCF_SENT_CHECK_CONDITION ;
 int WARN_ON_ONCE (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct se_cmd*) ;
 int trace_target_cmd_complete (struct se_cmd*) ;
 int translate_sense_reason (struct se_cmd*,int ) ;

int
transport_send_check_condition_and_sense(struct se_cmd *cmd,
  sense_reason_t reason, int from_transport)
{
 unsigned long flags;

 WARN_ON_ONCE(cmd->se_cmd_flags & SCF_SCSI_TMR_CDB);

 spin_lock_irqsave(&cmd->t_state_lock, flags);
 if (cmd->se_cmd_flags & SCF_SENT_CHECK_CONDITION) {
  spin_unlock_irqrestore(&cmd->t_state_lock, flags);
  return 0;
 }
 cmd->se_cmd_flags |= SCF_SENT_CHECK_CONDITION;
 spin_unlock_irqrestore(&cmd->t_state_lock, flags);

 if (!from_transport)
  translate_sense_reason(cmd, reason);

 trace_target_cmd_complete(cmd);
 return cmd->se_tfo->queue_status(cmd);
}
