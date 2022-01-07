
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int dummy; } ;
struct iscsi_node_attrib {int nopin_timeout; } ;
struct iscsi_conn {int nopin_timer_flags; int cid; int nopin_timer; int nopin_timer_lock; struct iscsi_session* sess; } ;


 int HZ ;
 int ISCSI_TF_RUNNING ;
 int ISCSI_TF_STOP ;
 struct iscsi_node_attrib* iscsit_tpg_get_node_attrib (struct iscsi_session*) ;
 scalar_t__ jiffies ;
 int lockdep_assert_held (int *) ;
 int mod_timer (int *,scalar_t__) ;
 int pr_debug (char*,int ,int) ;

void __iscsit_start_nopin_timer(struct iscsi_conn *conn)
{
 struct iscsi_session *sess = conn->sess;
 struct iscsi_node_attrib *na = iscsit_tpg_get_node_attrib(sess);

 lockdep_assert_held(&conn->nopin_timer_lock);




 if (!na->nopin_timeout)
  return;

 if (conn->nopin_timer_flags & ISCSI_TF_RUNNING)
  return;

 conn->nopin_timer_flags &= ~ISCSI_TF_STOP;
 conn->nopin_timer_flags |= ISCSI_TF_RUNNING;
 mod_timer(&conn->nopin_timer, jiffies + na->nopin_timeout * HZ);

 pr_debug("Started NOPIN Timer on CID: %d at %u second"
  " interval\n", conn->cid, na->nopin_timeout);
}
