
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iscsi_session {int time2retain_timer_flags; TYPE_1__* sess_ops; int time2retain_timer; int sid; TYPE_2__* tpg; } ;
struct TYPE_4__ {scalar_t__ tpg_state; int tpg_state_lock; } ;
struct TYPE_3__ {int DefaultTime2Retain; } ;


 int HZ ;
 int ISCSI_TF_RUNNING ;
 int ISCSI_TF_STOP ;
 scalar_t__ TPG_STATE_ACTIVE ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int pr_debug (char*,int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void iscsit_start_time2retain_handler(struct iscsi_session *sess)
{
 int tpg_active;




 spin_lock(&sess->tpg->tpg_state_lock);
 tpg_active = (sess->tpg->tpg_state == TPG_STATE_ACTIVE);
 spin_unlock(&sess->tpg->tpg_state_lock);

 if (!tpg_active)
  return;

 if (sess->time2retain_timer_flags & ISCSI_TF_RUNNING)
  return;

 pr_debug("Starting Time2Retain timer for %u seconds on"
  " SID: %u\n", sess->sess_ops->DefaultTime2Retain, sess->sid);

 sess->time2retain_timer_flags &= ~ISCSI_TF_STOP;
 sess->time2retain_timer_flags |= ISCSI_TF_RUNNING;
 mod_timer(&sess->time2retain_timer,
    jiffies + sess->sess_ops->DefaultTime2Retain * HZ);
}
