
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_conn {int nopin_response_timer_flags; int nopin_timer_lock; int nopin_response_timer; } ;


 int ISCSI_TF_RUNNING ;
 int ISCSI_TF_STOP ;
 int del_timer_sync (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iscsit_stop_nopin_response_timer(struct iscsi_conn *conn)
{
 spin_lock_bh(&conn->nopin_timer_lock);
 if (!(conn->nopin_response_timer_flags & ISCSI_TF_RUNNING)) {
  spin_unlock_bh(&conn->nopin_timer_lock);
  return;
 }
 conn->nopin_response_timer_flags |= ISCSI_TF_STOP;
 spin_unlock_bh(&conn->nopin_timer_lock);

 del_timer_sync(&conn->nopin_response_timer);

 spin_lock_bh(&conn->nopin_timer_lock);
 conn->nopin_response_timer_flags &= ~ISCSI_TF_RUNNING;
 spin_unlock_bh(&conn->nopin_timer_lock);
}
