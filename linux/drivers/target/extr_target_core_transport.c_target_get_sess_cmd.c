
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_session {int sess_cmd_lock; int cmd_count; int sess_cmd_list; scalar_t__ sess_tearing_down; } ;
struct se_cmd {int se_cmd_list; int se_cmd_flags; int cmd_kref; struct se_session* se_sess; } ;


 int EINVAL ;
 int ESHUTDOWN ;
 int SCF_ACK_KREF ;
 int kref_get_unless_zero (int *) ;
 int list_add_tail (int *,int *) ;
 int percpu_ref_get (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int target_put_sess_cmd (struct se_cmd*) ;

int target_get_sess_cmd(struct se_cmd *se_cmd, bool ack_kref)
{
 struct se_session *se_sess = se_cmd->se_sess;
 unsigned long flags;
 int ret = 0;






 if (ack_kref) {
  if (!kref_get_unless_zero(&se_cmd->cmd_kref))
   return -EINVAL;

  se_cmd->se_cmd_flags |= SCF_ACK_KREF;
 }

 spin_lock_irqsave(&se_sess->sess_cmd_lock, flags);
 if (se_sess->sess_tearing_down) {
  ret = -ESHUTDOWN;
  goto out;
 }
 list_add_tail(&se_cmd->se_cmd_list, &se_sess->sess_cmd_list);
 percpu_ref_get(&se_sess->cmd_count);
out:
 spin_unlock_irqrestore(&se_sess->sess_cmd_lock, flags);

 if (ret && ack_kref)
  target_put_sess_cmd(se_cmd);

 return ret;
}
