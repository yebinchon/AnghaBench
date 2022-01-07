
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int dummy; } ;
struct iscsi_conn_recovery {int cmd_count; } ;
struct iscsi_cmd {int i_conn_node; struct iscsi_conn_recovery* cr; int init_task_tag; } ;


 int BUG () ;
 int list_del_init (int *) ;
 int pr_err (char*,int ) ;

int iscsit_remove_cmd_from_connection_recovery(
 struct iscsi_cmd *cmd,
 struct iscsi_session *sess)
{
 struct iscsi_conn_recovery *cr;

 if (!cmd->cr) {
  pr_err("struct iscsi_conn_recovery pointer for ITT: 0x%08x"
   " is NULL!\n", cmd->init_task_tag);
  BUG();
 }
 cr = cmd->cr;

 list_del_init(&cmd->i_conn_node);
 return --cr->cmd_count;
}
