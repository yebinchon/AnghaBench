
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {scalar_t__ session_usage_count; int session_waiting_on_uc; int session_usage_lock; int session_waiting_on_uc_comp; } ;


 scalar_t__ in_interrupt () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wait_for_completion (int *) ;

int iscsit_check_session_usage_count(struct iscsi_session *sess)
{
 spin_lock_bh(&sess->session_usage_lock);
 if (sess->session_usage_count != 0) {
  sess->session_waiting_on_uc = 1;
  spin_unlock_bh(&sess->session_usage_lock);
  if (in_interrupt())
   return 2;

  wait_for_completion(&sess->session_waiting_on_uc_comp);
  return 1;
 }
 spin_unlock_bh(&sess->session_usage_lock);

 return 0;
}
