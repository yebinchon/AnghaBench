
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct iscsi_session {scalar_t__ state; int frwd_lock; } ;
struct iscsi_conn {unsigned long recv_timeout; unsigned long last_recv; unsigned long ping_timeout; unsigned long last_ping; int transport_timer; struct iscsi_session* session; } ;


 unsigned long HZ ;
 int ISCSI_DBG_CONN (struct iscsi_conn*,char*,...) ;
 int ISCSI_ERR_NOP_TIMEDOUT ;
 scalar_t__ ISCSI_STATE_LOGGED_IN ;
 int KERN_ERR ;
 struct iscsi_conn* conn ;
 struct iscsi_conn* from_timer (int ,struct timer_list*,int ) ;
 int iscsi_conn_failure (struct iscsi_conn*,int ) ;
 int iscsi_conn_printk (int ,struct iscsi_conn*,char*,unsigned long,unsigned long,unsigned long,unsigned long,int) ;
 scalar_t__ iscsi_has_ping_timed_out (struct iscsi_conn*) ;
 scalar_t__ iscsi_send_nopout (struct iscsi_conn*,int *) ;
 int jiffies ;
 int mod_timer (int *,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ time_before_eq (unsigned long,int) ;
 int transport_timer ;

__attribute__((used)) static void iscsi_check_transport_timeouts(struct timer_list *t)
{
 struct iscsi_conn *conn = from_timer(conn, t, transport_timer);
 struct iscsi_session *session = conn->session;
 unsigned long recv_timeout, next_timeout = 0, last_recv;

 spin_lock(&session->frwd_lock);
 if (session->state != ISCSI_STATE_LOGGED_IN)
  goto done;

 recv_timeout = conn->recv_timeout;
 if (!recv_timeout)
  goto done;

 recv_timeout *= HZ;
 last_recv = conn->last_recv;

 if (iscsi_has_ping_timed_out(conn)) {
  iscsi_conn_printk(KERN_ERR, conn, "ping timeout of %d secs "
      "expired, recv timeout %d, last rx %lu, "
      "last ping %lu, now %lu\n",
      conn->ping_timeout, conn->recv_timeout,
      last_recv, conn->last_ping, jiffies);
  spin_unlock(&session->frwd_lock);
  iscsi_conn_failure(conn, ISCSI_ERR_NOP_TIMEDOUT);
  return;
 }

 if (time_before_eq(last_recv + recv_timeout, jiffies)) {

  ISCSI_DBG_CONN(conn, "Sending nopout as ping\n");
  if (iscsi_send_nopout(conn, ((void*)0)))
   next_timeout = jiffies + (1 * HZ);
  else
   next_timeout = conn->last_ping + (conn->ping_timeout * HZ);
 } else
  next_timeout = last_recv + recv_timeout;

 ISCSI_DBG_CONN(conn, "Setting next tmo %lu\n", next_timeout);
 mod_timer(&conn->transport_timer, next_timeout);
done:
 spin_unlock(&session->frwd_lock);
}
