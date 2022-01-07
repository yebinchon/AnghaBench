
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int sid; } ;
struct iscsi_conn_recovery {int cid; int conn_recovery_cmd_lock; } ;
struct iscsi_cmd {int dummy; } ;


 int iscsit_remove_active_connection_recovery_entry (struct iscsi_conn_recovery*,struct iscsi_session*) ;
 int iscsit_remove_cmd_from_connection_recovery (struct iscsi_cmd*,struct iscsi_session*) ;
 int pr_debug (char*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void iscsit_task_reassign_remove_cmd(
 struct iscsi_cmd *cmd,
 struct iscsi_conn_recovery *cr,
 struct iscsi_session *sess)
{
 int ret;

 spin_lock(&cr->conn_recovery_cmd_lock);
 ret = iscsit_remove_cmd_from_connection_recovery(cmd, sess);
 spin_unlock(&cr->conn_recovery_cmd_lock);
 if (!ret) {
  pr_debug("iSCSI connection recovery successful for CID:"
   " %hu on SID: %u\n", cr->cid, sess->sid);
  iscsit_remove_active_connection_recovery_entry(cr, sess);
 }
}
