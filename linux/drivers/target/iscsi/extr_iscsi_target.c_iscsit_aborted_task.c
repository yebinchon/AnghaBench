
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_conn {int cmd_lock; } ;
struct TYPE_2__ {int transport_state; } ;
struct iscsi_cmd {int i_conn_node; TYPE_1__ se_cmd; } ;


 int CMD_T_FABRIC_STOP ;
 int __iscsit_free_cmd (struct iscsi_cmd*,int) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iscsit_aborted_task(struct iscsi_conn *conn, struct iscsi_cmd *cmd)
{
 spin_lock_bh(&conn->cmd_lock);
 if (!list_empty(&cmd->i_conn_node) &&
     !(cmd->se_cmd.transport_state & CMD_T_FABRIC_STOP))
  list_del_init(&cmd->i_conn_node);
 spin_unlock_bh(&conn->cmd_lock);

 __iscsit_free_cmd(cmd, 1);
}
