
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int session_usage_lock; int session_usage_count; } ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iscsit_inc_session_usage_count(struct iscsi_session *sess)
{
 spin_lock_bh(&sess->session_usage_lock);
 sess->session_usage_count++;
 spin_unlock_bh(&sess->session_usage_lock);
}
