
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int dummy; } ;
struct iscsi_node_attrib {int dataout_timeout; } ;
struct iscsi_conn {struct iscsi_session* sess; } ;
struct iscsi_cmd {int dataout_timer_flags; int dataout_timeout_lock; int init_task_tag; int dataout_timer; struct iscsi_conn* conn; } ;


 int HZ ;
 int ISCSI_TF_RUNNING ;
 scalar_t__ get_jiffies_64 () ;
 struct iscsi_node_attrib* iscsit_tpg_get_node_attrib (struct iscsi_session*) ;
 int mod_timer (int *,scalar_t__) ;
 int pr_debug (char*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iscsit_mod_dataout_timer(struct iscsi_cmd *cmd)
{
 struct iscsi_conn *conn = cmd->conn;
 struct iscsi_session *sess = conn->sess;
 struct iscsi_node_attrib *na = iscsit_tpg_get_node_attrib(sess);

 spin_lock_bh(&cmd->dataout_timeout_lock);
 if (!(cmd->dataout_timer_flags & ISCSI_TF_RUNNING)) {
  spin_unlock_bh(&cmd->dataout_timeout_lock);
  return;
 }

 mod_timer(&cmd->dataout_timer,
  (get_jiffies_64() + na->dataout_timeout * HZ));
 pr_debug("Updated DataOUT timer for ITT: 0x%08x",
   cmd->init_task_tag);
 spin_unlock_bh(&cmd->dataout_timeout_lock);
}
