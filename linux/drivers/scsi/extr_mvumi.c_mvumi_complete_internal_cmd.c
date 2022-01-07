
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvumi_sense_data {int dummy; } ;
struct mvumi_rsp_frame {scalar_t__ req_status; int rsp_flag; int payload; } ;
struct mvumi_hba {int int_cmd_wait_q; } ;
struct mvumi_cmd {scalar_t__ cmd_status; int sync_cmd; scalar_t__ data_buf; } ;


 int CL_RSP_FLAG_SENSEDATA ;
 scalar_t__ SAM_STAT_CHECK_CONDITION ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int memcpy (scalar_t__,int ,int) ;
 int wake_up (int *) ;

__attribute__((used)) static void mvumi_complete_internal_cmd(struct mvumi_hba *mhba,
      struct mvumi_cmd *cmd,
     struct mvumi_rsp_frame *ob_frame)
{
 if (atomic_read(&cmd->sync_cmd)) {
  cmd->cmd_status = ob_frame->req_status;

  if ((ob_frame->req_status == SAM_STAT_CHECK_CONDITION) &&
    (ob_frame->rsp_flag & CL_RSP_FLAG_SENSEDATA) &&
    cmd->data_buf) {
   memcpy(cmd->data_buf, ob_frame->payload,
     sizeof(struct mvumi_sense_data));
  }
  atomic_dec(&cmd->sync_cmd);
  wake_up(&mhba->int_cmd_wait_q);
 }
}
