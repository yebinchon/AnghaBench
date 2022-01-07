
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct iscsi_r2t {int dummy; } ;
struct iscsi_cmd {int cmd_flags; scalar_t__ acked_data_sn; scalar_t__ r2t_sn; int init_task_tag; } ;


 int ICF_GOT_DATACK_SNACK ;
 int ISCSI_REASON_BOOKMARK_INVALID ;
 int ISCSI_REASON_PROTOCOL_ERROR ;
 struct iscsi_r2t* iscsit_get_holder_for_r2tsn (struct iscsi_cmd*,scalar_t__) ;
 int iscsit_reject_cmd (struct iscsi_cmd*,int ,unsigned char*) ;
 scalar_t__ iscsit_send_recovery_r2t_for_snack (struct iscsi_cmd*,struct iscsi_r2t*) ;
 int pr_err (char*,int ,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int iscsit_handle_r2t_snack(
 struct iscsi_cmd *cmd,
 unsigned char *buf,
 u32 begrun,
 u32 runlength)
{
 u32 last_r2tsn;
 struct iscsi_r2t *r2t;





 if ((cmd->cmd_flags & ICF_GOT_DATACK_SNACK) &&
     (begrun <= cmd->acked_data_sn)) {
  pr_err("ITT: 0x%08x, R2T SNACK requesting"
   " retransmission of R2TSN: 0x%08x to 0x%08x but already"
   " acked to  R2TSN: 0x%08x by TMR TASK_REASSIGN,"
   " protocol error.\n", cmd->init_task_tag, begrun,
   (begrun + runlength), cmd->acked_data_sn);

  return iscsit_reject_cmd(cmd, ISCSI_REASON_PROTOCOL_ERROR, buf);
 }

 if (runlength) {
  if ((begrun + runlength) > cmd->r2t_sn) {
   pr_err("Command ITT: 0x%08x received R2T SNACK"
   " with BegRun: 0x%08x, RunLength: 0x%08x, exceeds"
   " current R2TSN: 0x%08x, protocol error.\n",
   cmd->init_task_tag, begrun, runlength, cmd->r2t_sn);
   return iscsit_reject_cmd(cmd,
     ISCSI_REASON_BOOKMARK_INVALID, buf);
  }
  last_r2tsn = (begrun + runlength);
 } else
  last_r2tsn = cmd->r2t_sn;

 while (begrun < last_r2tsn) {
  r2t = iscsit_get_holder_for_r2tsn(cmd, begrun);
  if (!r2t)
   return -1;
  if (iscsit_send_recovery_r2t_for_snack(cmd, r2t) < 0)
   return -1;

  begrun++;
 }

 return 0;
}
