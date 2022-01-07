
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iscsi_conn {int cmd_lock; int conn_cmd_list; int sess; } ;
struct iscsi_cmd {int targ_xfer_tag; int i_conn_node; int init_task_tag; int iscsi_opcode; } ;


 int ISCSI_OP_NOOP_IN ;
 int ISTATE_SEND_NOPIN_NO_RESPONSE ;
 int ISTATE_SEND_NOPIN_WANT_RESPONSE ;
 int RESERVED_ITT ;
 int TASK_RUNNING ;
 int iscsit_add_cmd_to_immediate_queue (struct iscsi_cmd*,struct iscsi_conn*,int ) ;
 struct iscsi_cmd* iscsit_allocate_cmd (struct iscsi_conn*,int ) ;
 int iscsit_start_nopin_response_timer (struct iscsi_conn*) ;
 int list_add_tail (int *,int *) ;
 int session_get_next_ttt (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int iscsit_add_nopin(struct iscsi_conn *conn, int want_response)
{
 u8 state;
 struct iscsi_cmd *cmd;

 cmd = iscsit_allocate_cmd(conn, TASK_RUNNING);
 if (!cmd)
  return -1;

 cmd->iscsi_opcode = ISCSI_OP_NOOP_IN;
 state = (want_response) ? ISTATE_SEND_NOPIN_WANT_RESPONSE :
    ISTATE_SEND_NOPIN_NO_RESPONSE;
 cmd->init_task_tag = RESERVED_ITT;
 cmd->targ_xfer_tag = (want_response) ?
        session_get_next_ttt(conn->sess) : 0xFFFFFFFF;
 spin_lock_bh(&conn->cmd_lock);
 list_add_tail(&cmd->i_conn_node, &conn->conn_cmd_list);
 spin_unlock_bh(&conn->cmd_lock);

 if (want_response)
  iscsit_start_nopin_response_timer(conn);
 iscsit_add_cmd_to_immediate_queue(cmd, conn, state);

 return 0;
}
