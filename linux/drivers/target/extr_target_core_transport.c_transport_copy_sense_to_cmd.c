
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int t_state_lock; int scsi_sense_length; int se_cmd_flags; } ;


 int SCF_TRANSPORT_TASK_SENSE ;
 int memcpy (unsigned char*,unsigned char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned char* transport_get_sense_buffer (struct se_cmd*) ;

void transport_copy_sense_to_cmd(struct se_cmd *cmd, unsigned char *sense)
{
 unsigned char *cmd_sense_buf;
 unsigned long flags;

 spin_lock_irqsave(&cmd->t_state_lock, flags);
 cmd_sense_buf = transport_get_sense_buffer(cmd);
 if (!cmd_sense_buf) {
  spin_unlock_irqrestore(&cmd->t_state_lock, flags);
  return;
 }

 cmd->se_cmd_flags |= SCF_TRANSPORT_TASK_SENSE;
 memcpy(cmd_sense_buf, sense, cmd->scsi_sense_length);
 spin_unlock_irqrestore(&cmd->t_state_lock, flags);
}
