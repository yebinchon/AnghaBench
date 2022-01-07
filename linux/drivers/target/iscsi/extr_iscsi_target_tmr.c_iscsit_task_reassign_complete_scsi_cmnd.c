
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_tmr_req {struct iscsi_cmd* ref_cmd; } ;
struct iscsi_conn_recovery {int dummy; } ;
struct iscsi_conn {int cmd_lock; int conn_cmd_list; int sess; } ;
struct TYPE_2__ {int se_cmd_flags; } ;
struct iscsi_cmd {int init_task_tag; int data_direction; int i_state; TYPE_1__ se_cmd; int i_conn_node; scalar_t__ exp_stat_sn; scalar_t__ stat_sn; struct iscsi_conn_recovery* cr; } ;





 int ISTATE_SEND_STATUS ;
 int SCF_SENT_CHECK_CONDITION ;
 int iscsit_add_cmd_to_response_queue (struct iscsi_cmd*,struct iscsi_conn*,int ) ;
 int iscsit_task_reassign_complete_none (struct iscsi_cmd*,struct iscsi_tmr_req*) ;
 int iscsit_task_reassign_complete_read (struct iscsi_cmd*,struct iscsi_tmr_req*) ;
 int iscsit_task_reassign_complete_write (struct iscsi_cmd*,struct iscsi_tmr_req*) ;
 int iscsit_task_reassign_remove_cmd (struct iscsi_cmd*,struct iscsi_conn_recovery*,int ) ;
 int list_add_tail (int *,int *) ;
 int pr_err (char*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int iscsit_task_reassign_complete_scsi_cmnd(
 struct iscsi_tmr_req *tmr_req,
 struct iscsi_conn *conn)
{
 struct iscsi_cmd *cmd = tmr_req->ref_cmd;
 struct iscsi_conn_recovery *cr;

 if (!cmd->cr) {
  pr_err("struct iscsi_conn_recovery pointer for ITT: 0x%08x"
   " is NULL!\n", cmd->init_task_tag);
  return -1;
 }
 cr = cmd->cr;






 cmd->stat_sn = cmd->exp_stat_sn = 0;

 iscsit_task_reassign_remove_cmd(cmd, cr, conn->sess);

 spin_lock_bh(&conn->cmd_lock);
 list_add_tail(&cmd->i_conn_node, &conn->conn_cmd_list);
 spin_unlock_bh(&conn->cmd_lock);

 if (cmd->se_cmd.se_cmd_flags & SCF_SENT_CHECK_CONDITION) {
  cmd->i_state = ISTATE_SEND_STATUS;
  iscsit_add_cmd_to_response_queue(cmd, conn, cmd->i_state);
  return 0;
 }

 switch (cmd->data_direction) {
 case 128:
  return iscsit_task_reassign_complete_write(cmd, tmr_req);
 case 130:
  return iscsit_task_reassign_complete_read(cmd, tmr_req);
 case 129:
  return iscsit_task_reassign_complete_none(cmd, tmr_req);
 default:
  pr_err("Unknown cmd->data_direction: 0x%02x\n",
    cmd->data_direction);
  return -1;
 }

 return 0;
}
