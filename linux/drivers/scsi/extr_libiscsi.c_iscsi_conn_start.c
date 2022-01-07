
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {scalar_t__ first_burst; scalar_t__ max_burst; int age; int cls_session; int frwd_lock; int cmdsn; int queued_cmdsn; int state; int initial_r2t_en; scalar_t__ imm_data_en; } ;
struct iscsi_conn {int ping_timeout; int recv_timeout; int stop_stage; int ehwait; int tmf_state; int transport_timer; void* last_ping; void* last_recv; int c_stage; struct iscsi_session* session; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;


 int EINVAL ;
 int EPERM ;
 int HZ ;
 int ISCSI_CONN_STARTED ;
 int ISCSI_STATE_LOGGED_IN ;
 int KERN_ERR ;
 int KERN_INFO ;


 int TMF_INITIAL ;
 int iscsi_conn_printk (int ,struct iscsi_conn*,char*,...) ;
 int iscsi_unblock_session (int ) ;
 void* jiffies ;
 int mod_timer (int *,void*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wake_up (int *) ;

int iscsi_conn_start(struct iscsi_cls_conn *cls_conn)
{
 struct iscsi_conn *conn = cls_conn->dd_data;
 struct iscsi_session *session = conn->session;

 if (!session) {
  iscsi_conn_printk(KERN_ERR, conn,
      "can't start unbound connection\n");
  return -EPERM;
 }

 if ((session->imm_data_en || !session->initial_r2t_en) &&
      session->first_burst > session->max_burst) {
  iscsi_conn_printk(KERN_INFO, conn, "invalid burst lengths: "
      "first_burst %d max_burst %d\n",
      session->first_burst, session->max_burst);
  return -EINVAL;
 }

 if (conn->ping_timeout && !conn->recv_timeout) {
  iscsi_conn_printk(KERN_ERR, conn, "invalid recv timeout of "
      "zero. Using 5 seconds\n.");
  conn->recv_timeout = 5;
 }

 if (conn->recv_timeout && !conn->ping_timeout) {
  iscsi_conn_printk(KERN_ERR, conn, "invalid ping timeout of "
      "zero. Using 5 seconds.\n");
  conn->ping_timeout = 5;
 }

 spin_lock_bh(&session->frwd_lock);
 conn->c_stage = ISCSI_CONN_STARTED;
 session->state = ISCSI_STATE_LOGGED_IN;
 session->queued_cmdsn = session->cmdsn;

 conn->last_recv = jiffies;
 conn->last_ping = jiffies;
 if (conn->recv_timeout && conn->ping_timeout)
  mod_timer(&conn->transport_timer,
     jiffies + (conn->recv_timeout * HZ));

 switch(conn->stop_stage) {
 case 129:




  conn->stop_stage = 0;
  conn->tmf_state = TMF_INITIAL;
  session->age++;
  if (session->age == 16)
   session->age = 0;
  break;
 case 128:
  conn->stop_stage = 0;
  break;
 default:
  break;
 }
 spin_unlock_bh(&session->frwd_lock);

 iscsi_unblock_session(session->cls_session);
 wake_up(&conn->ehwait);
 return 0;
}
