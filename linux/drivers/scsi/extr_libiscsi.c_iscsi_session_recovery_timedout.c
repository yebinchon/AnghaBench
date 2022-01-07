
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_session {scalar_t__ state; int frwd_lock; TYPE_1__* leadconn; } ;
struct iscsi_cls_session {struct iscsi_session* dd_data; } ;
struct TYPE_2__ {int ehwait; } ;


 scalar_t__ ISCSI_STATE_LOGGED_IN ;
 scalar_t__ ISCSI_STATE_RECOVERY_FAILED ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wake_up (int *) ;

void iscsi_session_recovery_timedout(struct iscsi_cls_session *cls_session)
{
 struct iscsi_session *session = cls_session->dd_data;

 spin_lock_bh(&session->frwd_lock);
 if (session->state != ISCSI_STATE_LOGGED_IN) {
  session->state = ISCSI_STATE_RECOVERY_FAILED;
  if (session->leadconn)
   wake_up(&session->leadconn->ehwait);
 }
 spin_unlock_bh(&session->frwd_lock);
}
