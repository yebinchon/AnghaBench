
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_conn {int nopin_timer_lock; } ;


 int __iscsit_start_nopin_timer (struct iscsi_conn*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iscsit_start_nopin_timer(struct iscsi_conn *conn)
{
 spin_lock_bh(&conn->nopin_timer_lock);
 __iscsit_start_nopin_timer(conn);
 spin_unlock_bh(&conn->nopin_timer_lock);
}
