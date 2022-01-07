
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_tmr_req {int dummy; } ;
struct iscsi_conn {int dummy; } ;
struct iscsi_cmd {int i_state; struct iscsi_conn* conn; } ;


 int ISTATE_SEND_STATUS ;
 int iscsit_add_cmd_to_response_queue (struct iscsi_cmd*,struct iscsi_conn*,int ) ;

__attribute__((used)) static int iscsit_task_reassign_complete_none(
 struct iscsi_cmd *cmd,
 struct iscsi_tmr_req *tmr_req)
{
 struct iscsi_conn *conn = cmd->conn;

 cmd->i_state = ISTATE_SEND_STATUS;
 iscsit_add_cmd_to_response_queue(cmd, conn, cmd->i_state);
 return 0;
}
