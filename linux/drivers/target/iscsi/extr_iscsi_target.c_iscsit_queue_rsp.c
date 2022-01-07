
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_conn {int dummy; } ;
struct iscsi_cmd {int i_state; int conn; } ;


 int iscsit_add_cmd_to_response_queue (struct iscsi_cmd*,int ,int ) ;

int iscsit_queue_rsp(struct iscsi_conn *conn, struct iscsi_cmd *cmd)
{
 return iscsit_add_cmd_to_response_queue(cmd, cmd->conn, cmd->i_state);
}
