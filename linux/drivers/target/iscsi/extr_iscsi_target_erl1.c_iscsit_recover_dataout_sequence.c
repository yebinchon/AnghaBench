
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iscsi_cmd {int istate_lock; int cmd_flags; } ;


 int DATAOUT_CANNOT_RECOVER ;
 int DATAOUT_WITHIN_COMMAND_RECOVERY ;
 int ICF_WITHIN_COMMAND_RECOVERY ;
 scalar_t__ iscsit_recalculate_dataout_values (struct iscsi_cmd*,int ,int ,int *,int *) ;
 int iscsit_send_recovery_r2t (struct iscsi_cmd*,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int iscsit_recover_dataout_sequence(
 struct iscsi_cmd *cmd,
 u32 pdu_offset,
 u32 pdu_length)
{
 u32 r2t_length = 0, r2t_offset = 0;

 spin_lock_bh(&cmd->istate_lock);
 cmd->cmd_flags |= ICF_WITHIN_COMMAND_RECOVERY;
 spin_unlock_bh(&cmd->istate_lock);

 if (iscsit_recalculate_dataout_values(cmd, pdu_offset, pdu_length,
   &r2t_offset, &r2t_length) < 0)
  return DATAOUT_CANNOT_RECOVER;

 iscsit_send_recovery_r2t(cmd, r2t_offset, r2t_length);

 return DATAOUT_WITHIN_COMMAND_RECOVERY;
}
