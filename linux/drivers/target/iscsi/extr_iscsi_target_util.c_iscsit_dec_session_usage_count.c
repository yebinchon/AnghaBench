
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int session_usage_lock; int session_waiting_on_uc_comp; scalar_t__ session_waiting_on_uc; int session_usage_count; } ;


 int complete (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iscsit_dec_session_usage_count(struct iscsi_session *sess)
{
 spin_lock_bh(&sess->session_usage_lock);
 sess->session_usage_count--;

 if (!sess->session_usage_count && sess->session_waiting_on_uc)
  complete(&sess->session_waiting_on_uc_comp);

 spin_unlock_bh(&sess->session_usage_lock);
}
