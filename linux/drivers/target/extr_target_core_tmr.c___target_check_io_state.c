
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_session {int sess_cmd_lock; } ;
struct se_cmd {int transport_state; int cmd_kref; int t_state_lock; struct se_session* se_sess; int tag; } ;


 int CMD_T_ABORTED ;
 int CMD_T_COMPLETE ;
 int CMD_T_FABRIC_STOP ;
 int CMD_T_TAS ;
 int WARN_ON_ONCE (int) ;
 int assert_spin_locked (int *) ;
 int irqs_disabled () ;
 int kref_get_unless_zero (int *) ;
 int pr_debug (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool __target_check_io_state(struct se_cmd *se_cmd,
        struct se_session *tmr_sess, int tas)
{
 struct se_session *sess = se_cmd->se_sess;

 assert_spin_locked(&sess->sess_cmd_lock);
 WARN_ON_ONCE(!irqs_disabled());
 spin_lock(&se_cmd->t_state_lock);
 if (se_cmd->transport_state & (CMD_T_COMPLETE | CMD_T_FABRIC_STOP)) {
  pr_debug("Attempted to abort io tag: %llu already complete or"
   " fabric stop, skipping\n", se_cmd->tag);
  spin_unlock(&se_cmd->t_state_lock);
  return 0;
 }
 se_cmd->transport_state |= CMD_T_ABORTED;

 if ((tmr_sess != se_cmd->se_sess) && tas)
  se_cmd->transport_state |= CMD_T_TAS;

 spin_unlock(&se_cmd->t_state_lock);

 return kref_get_unless_zero(&se_cmd->cmd_kref);
}
