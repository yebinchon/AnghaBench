
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct iscsi_conn {int cmd_lock; int conn_cmd_list; } ;
struct TYPE_2__ {int * se_tfo; } ;
struct iscsi_cmd {TYPE_1__ se_cmd; int i_state; int i_conn_node; int buf_ptr; int reject_reason; int iscsi_opcode; struct iscsi_conn* conn; int init_task_tag; } ;


 int GFP_KERNEL ;
 int ISCSI_HDR_LEN ;
 int ISCSI_OP_REJECT ;
 int ISTATE_SEND_REJECT ;
 int iscsit_add_cmd_to_response_queue (struct iscsi_cmd*,struct iscsi_conn*,int ) ;
 int iscsit_free_cmd (struct iscsi_cmd*,int) ;
 int kmemdup (unsigned char*,int ,int ) ;
 int list_add_tail (int *,int *) ;
 int pr_debug (char*) ;
 int pr_err (char*,...) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int target_put_sess_cmd (TYPE_1__*) ;

__attribute__((used)) static int iscsit_add_reject_from_cmd(
 struct iscsi_cmd *cmd,
 u8 reason,
 bool add_to_conn,
 unsigned char *buf)
{
 struct iscsi_conn *conn;
 const bool do_put = cmd->se_cmd.se_tfo != ((void*)0);

 if (!cmd->conn) {
  pr_err("cmd->conn is NULL for ITT: 0x%08x\n",
    cmd->init_task_tag);
  return -1;
 }
 conn = cmd->conn;

 cmd->iscsi_opcode = ISCSI_OP_REJECT;
 cmd->reject_reason = reason;

 cmd->buf_ptr = kmemdup(buf, ISCSI_HDR_LEN, GFP_KERNEL);
 if (!cmd->buf_ptr) {
  pr_err("Unable to allocate memory for cmd->buf_ptr\n");
  iscsit_free_cmd(cmd, 0);
  return -1;
 }

 if (add_to_conn) {
  spin_lock_bh(&conn->cmd_lock);
  list_add_tail(&cmd->i_conn_node, &conn->conn_cmd_list);
  spin_unlock_bh(&conn->cmd_lock);
 }

 cmd->i_state = ISTATE_SEND_REJECT;
 iscsit_add_cmd_to_response_queue(cmd, conn, cmd->i_state);




 if (do_put) {
  pr_debug("iscsi reject: calling target_put_sess_cmd >>>>>>\n");
  target_put_sess_cmd(&cmd->se_cmd);
 }
 return -1;
}
