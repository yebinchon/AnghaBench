
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int dummy; } ;
struct iscsi_node_attrib {int nopin_response_timeout; } ;
struct iscsi_conn {int nopin_response_timer_flags; int nopin_timer_lock; int nopin_response_timer; struct iscsi_session* sess; } ;


 int HZ ;
 int ISCSI_TF_RUNNING ;
 scalar_t__ get_jiffies_64 () ;
 struct iscsi_node_attrib* iscsit_tpg_get_node_attrib (struct iscsi_session*) ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iscsit_mod_nopin_response_timer(struct iscsi_conn *conn)
{
 struct iscsi_session *sess = conn->sess;
 struct iscsi_node_attrib *na = iscsit_tpg_get_node_attrib(sess);

 spin_lock_bh(&conn->nopin_timer_lock);
 if (!(conn->nopin_response_timer_flags & ISCSI_TF_RUNNING)) {
  spin_unlock_bh(&conn->nopin_timer_lock);
  return;
 }

 mod_timer(&conn->nopin_response_timer,
  (get_jiffies_64() + na->nopin_response_timeout * HZ));
 spin_unlock_bh(&conn->nopin_timer_lock);
}
