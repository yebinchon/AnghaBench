
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {scalar_t__ se_sess; scalar_t__ se_tfo; } ;
struct iscsi_cmd {int i_conn_node; struct se_cmd se_cmd; } ;


 int WARN_ON (int) ;
 int __iscsit_free_cmd (struct iscsi_cmd*,int) ;
 int iscsit_release_cmd (struct iscsi_cmd*) ;
 int list_empty (int *) ;
 int target_put_sess_cmd (struct se_cmd*) ;
 int transport_generic_free_cmd (struct se_cmd*,int) ;

void iscsit_free_cmd(struct iscsi_cmd *cmd, bool shutdown)
{
 struct se_cmd *se_cmd = cmd->se_cmd.se_tfo ? &cmd->se_cmd : ((void*)0);
 int rc;

 WARN_ON(!list_empty(&cmd->i_conn_node));

 __iscsit_free_cmd(cmd, shutdown);
 if (se_cmd) {
  rc = transport_generic_free_cmd(se_cmd, shutdown);
  if (!rc && shutdown && se_cmd->se_sess) {
   __iscsit_free_cmd(cmd, shutdown);
   target_put_sess_cmd(se_cmd);
  }
 } else {
  iscsit_release_cmd(cmd);
 }
}
