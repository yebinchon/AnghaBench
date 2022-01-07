
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int dummy; } ;
struct iscsi_node_attrib {int dataout_timeout; } ;
struct iscsi_conn {int cid; struct iscsi_session* sess; } ;
struct iscsi_cmd {int dataout_timer_flags; int dataout_timer; int init_task_tag; int dataout_timeout_lock; } ;


 int HZ ;
 int ISCSI_TF_RUNNING ;
 int ISCSI_TF_STOP ;
 struct iscsi_node_attrib* iscsit_tpg_get_node_attrib (struct iscsi_session*) ;
 scalar_t__ jiffies ;
 int lockdep_assert_held (int *) ;
 int mod_timer (int *,scalar_t__) ;
 int pr_debug (char*,int ,int ) ;

void iscsit_start_dataout_timer(
 struct iscsi_cmd *cmd,
 struct iscsi_conn *conn)
{
 struct iscsi_session *sess = conn->sess;
 struct iscsi_node_attrib *na = iscsit_tpg_get_node_attrib(sess);

 lockdep_assert_held(&cmd->dataout_timeout_lock);

 if (cmd->dataout_timer_flags & ISCSI_TF_RUNNING)
  return;

 pr_debug("Starting DataOUT timer for ITT: 0x%08x on"
  " CID: %hu.\n", cmd->init_task_tag, conn->cid);

 cmd->dataout_timer_flags &= ~ISCSI_TF_STOP;
 cmd->dataout_timer_flags |= ISCSI_TF_RUNNING;
 mod_timer(&cmd->dataout_timer, jiffies + na->dataout_timeout * HZ);
}
