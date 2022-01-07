
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct iscsi_conn {int nopin_timer_flags; int nopin_timer_lock; } ;


 int ISCSI_TF_RUNNING ;
 int ISCSI_TF_STOP ;
 struct iscsi_conn* conn ;
 struct iscsi_conn* from_timer (int ,struct timer_list*,int ) ;
 int iscsit_add_nopin (struct iscsi_conn*,int) ;
 int iscsit_dec_conn_usage_count (struct iscsi_conn*) ;
 int iscsit_inc_conn_usage_count (struct iscsi_conn*) ;
 int nopin_timer ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iscsit_handle_nopin_timeout(struct timer_list *t)
{
 struct iscsi_conn *conn = from_timer(conn, t, nopin_timer);

 iscsit_inc_conn_usage_count(conn);

 spin_lock_bh(&conn->nopin_timer_lock);
 if (conn->nopin_timer_flags & ISCSI_TF_STOP) {
  spin_unlock_bh(&conn->nopin_timer_lock);
  iscsit_dec_conn_usage_count(conn);
  return;
 }
 conn->nopin_timer_flags &= ~ISCSI_TF_RUNNING;
 spin_unlock_bh(&conn->nopin_timer_lock);

 iscsit_add_nopin(conn, 1);
 iscsit_dec_conn_usage_count(conn);
}
