
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_tmr_req {scalar_t__ exp_data_sn; struct iscsi_cmd* ref_cmd; } ;
struct iscsi_conn {int dummy; } ;
struct TYPE_2__ {int se_cmd_flags; } ;
struct iscsi_cmd {scalar_t__ iscsi_opcode; scalar_t__ data_direction; scalar_t__ data_sn; int cmd_flags; scalar_t__ acked_data_sn; scalar_t__ r2t_sn; TYPE_1__ se_cmd; } ;


 scalar_t__ DMA_FROM_DEVICE ;
 scalar_t__ DMA_NONE ;
 scalar_t__ DMA_TO_DEVICE ;
 int ICF_GOT_DATACK_SNACK ;
 scalar_t__ ISCSI_OP_SCSI_CMD ;
 int SCF_SENT_CHECK_CONDITION ;
 int iscsit_task_reassign_prepare_read (struct iscsi_tmr_req*,struct iscsi_conn*) ;
 int iscsit_task_reassign_prepare_write (struct iscsi_tmr_req*,struct iscsi_conn*) ;
 int pr_err (char*,scalar_t__,...) ;

int iscsit_check_task_reassign_expdatasn(
 struct iscsi_tmr_req *tmr_req,
 struct iscsi_conn *conn)
{
 struct iscsi_cmd *ref_cmd = tmr_req->ref_cmd;

 if (ref_cmd->iscsi_opcode != ISCSI_OP_SCSI_CMD)
  return 0;

 if (ref_cmd->se_cmd.se_cmd_flags & SCF_SENT_CHECK_CONDITION)
  return 0;

 if (ref_cmd->data_direction == DMA_NONE)
  return 0;
 if (ref_cmd->data_direction == DMA_FROM_DEVICE) {
  if (tmr_req->exp_data_sn > ref_cmd->data_sn) {
   pr_err("Received ExpDataSN: 0x%08x for READ"
    " in TMR TASK_REASSIGN greater than command's"
    " DataSN: 0x%08x.\n", tmr_req->exp_data_sn,
    ref_cmd->data_sn);
   return -1;
  }
  if ((ref_cmd->cmd_flags & ICF_GOT_DATACK_SNACK) &&
      (tmr_req->exp_data_sn <= ref_cmd->acked_data_sn)) {
   pr_err("Received ExpDataSN: 0x%08x for READ"
    " in TMR TASK_REASSIGN for previously"
    " acknowledged DataIN: 0x%08x,"
    " protocol error\n", tmr_req->exp_data_sn,
    ref_cmd->acked_data_sn);
   return -1;
  }
  return iscsit_task_reassign_prepare_read(tmr_req, conn);
 }







 if (ref_cmd->data_direction == DMA_TO_DEVICE) {
  if (tmr_req->exp_data_sn > ref_cmd->r2t_sn) {
   pr_err("Received ExpDataSN: 0x%08x for WRITE"
    " in TMR TASK_REASSIGN greater than command's"
    " R2TSN: 0x%08x.\n", tmr_req->exp_data_sn,
     ref_cmd->r2t_sn);
   return -1;
  }
  return iscsit_task_reassign_prepare_write(tmr_req, conn);
 }

 pr_err("Unknown iSCSI data_direction: 0x%02x\n",
   ref_cmd->data_direction);

 return -1;
}
