
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_conn {scalar_t__ conn_state; int state_lock; } ;


 scalar_t__ TARG_CONN_STATE_LOGGED_IN ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static bool iscsi_target_check_conn_state(struct iscsi_conn *conn)
{
 bool ret;

 spin_lock_bh(&conn->state_lock);
 ret = (conn->conn_state != TARG_CONN_STATE_LOGGED_IN);
 spin_unlock_bh(&conn->state_lock);

 return ret;
}
