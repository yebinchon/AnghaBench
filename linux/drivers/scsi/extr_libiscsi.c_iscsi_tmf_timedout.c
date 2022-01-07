
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct iscsi_session {int frwd_lock; } ;
struct iscsi_conn {scalar_t__ tmf_state; int ehwait; struct iscsi_session* session; } ;


 int ISCSI_DBG_EH (struct iscsi_session*,char*) ;
 scalar_t__ TMF_QUEUED ;
 scalar_t__ TMF_TIMEDOUT ;
 struct iscsi_conn* conn ;
 struct iscsi_conn* from_timer (int ,struct timer_list*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tmf_timer ;
 int wake_up (int *) ;

__attribute__((used)) static void iscsi_tmf_timedout(struct timer_list *t)
{
 struct iscsi_conn *conn = from_timer(conn, t, tmf_timer);
 struct iscsi_session *session = conn->session;

 spin_lock(&session->frwd_lock);
 if (conn->tmf_state == TMF_QUEUED) {
  conn->tmf_state = TMF_TIMEDOUT;
  ISCSI_DBG_EH(session, "tmf timedout\n");

  wake_up(&conn->ehwait);
 }
 spin_unlock(&session->frwd_lock);
}
