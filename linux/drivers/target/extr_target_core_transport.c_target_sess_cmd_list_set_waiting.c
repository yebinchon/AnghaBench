
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_session {int sess_tearing_down; int cmd_count; int sess_cmd_lock; } ;


 int percpu_ref_kill (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void target_sess_cmd_list_set_waiting(struct se_session *se_sess)
{
 unsigned long flags;

 spin_lock_irqsave(&se_sess->sess_cmd_lock, flags);
 se_sess->sess_tearing_down = 1;
 spin_unlock_irqrestore(&se_sess->sess_cmd_lock, flags);

 percpu_ref_kill(&se_sess->cmd_count);
}
