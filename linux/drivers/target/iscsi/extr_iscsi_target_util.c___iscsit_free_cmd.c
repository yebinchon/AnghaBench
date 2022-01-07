
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_conn {TYPE_1__* conn_transport; } ;
struct iscsi_cmd {scalar_t__ data_direction; int i_conn_node; struct iscsi_conn* conn; } ;
struct TYPE_2__ {int (* iscsit_unmap_cmd ) (struct iscsi_conn*,struct iscsi_cmd*) ;} ;


 scalar_t__ DMA_FROM_DEVICE ;
 scalar_t__ DMA_TO_DEVICE ;
 int WARN_ON (int) ;
 int iscsit_free_all_datain_reqs (struct iscsi_cmd*) ;
 int iscsit_free_r2ts_from_list (struct iscsi_cmd*) ;
 int iscsit_remove_cmd_from_immediate_queue (struct iscsi_cmd*,struct iscsi_conn*) ;
 int iscsit_remove_cmd_from_response_queue (struct iscsi_cmd*,struct iscsi_conn*) ;
 int iscsit_stop_dataout_timer (struct iscsi_cmd*) ;
 int list_empty (int *) ;
 int stub1 (struct iscsi_conn*,struct iscsi_cmd*) ;

void __iscsit_free_cmd(struct iscsi_cmd *cmd, bool check_queues)
{
 struct iscsi_conn *conn = cmd->conn;

 WARN_ON(!list_empty(&cmd->i_conn_node));

 if (cmd->data_direction == DMA_TO_DEVICE) {
  iscsit_stop_dataout_timer(cmd);
  iscsit_free_r2ts_from_list(cmd);
 }
 if (cmd->data_direction == DMA_FROM_DEVICE)
  iscsit_free_all_datain_reqs(cmd);

 if (conn && check_queues) {
  iscsit_remove_cmd_from_immediate_queue(cmd, conn);
  iscsit_remove_cmd_from_response_queue(cmd, conn);
 }

 if (conn && conn->conn_transport->iscsit_unmap_cmd)
  conn->conn_transport->iscsit_unmap_cmd(conn, cmd);
}
