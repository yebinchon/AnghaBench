
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int queue; } ;
struct iscsi_session {int eh_mutex; int frwd_lock; struct iscsi_conn* leadconn; int back_lock; TYPE_1__ cmdpool; int state; } ;
struct iscsi_conn {int login_task; int local_ipaddr; int persistent_address; scalar_t__ data; int ehwait; int c_stage; int transport_timer; struct iscsi_session* session; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;


 int ISCSI_CONN_CLEANUP_WAIT ;
 int ISCSI_DEF_MAX_RECV_SEG_LEN ;
 int ISCSI_STATE_TERMINATE ;
 int del_timer_sync (int *) ;
 int free_pages (unsigned long,int ) ;
 int get_order (int ) ;
 int iscsi_destroy_conn (struct iscsi_cls_conn*) ;
 int iscsi_suspend_tx (struct iscsi_conn*) ;
 int kfifo_in (int *,void*,int) ;
 int kfree (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wake_up (int *) ;

void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
{
 struct iscsi_conn *conn = cls_conn->dd_data;
 struct iscsi_session *session = conn->session;

 del_timer_sync(&conn->transport_timer);

 mutex_lock(&session->eh_mutex);
 spin_lock_bh(&session->frwd_lock);
 conn->c_stage = ISCSI_CONN_CLEANUP_WAIT;
 if (session->leadconn == conn) {



  session->state = ISCSI_STATE_TERMINATE;
  wake_up(&conn->ehwait);
 }
 spin_unlock_bh(&session->frwd_lock);


 iscsi_suspend_tx(conn);

 spin_lock_bh(&session->frwd_lock);
 free_pages((unsigned long) conn->data,
     get_order(ISCSI_DEF_MAX_RECV_SEG_LEN));
 kfree(conn->persistent_address);
 kfree(conn->local_ipaddr);

 spin_lock_bh(&session->back_lock);
 kfifo_in(&session->cmdpool.queue, (void*)&conn->login_task,
      sizeof(void*));
 spin_unlock_bh(&session->back_lock);
 if (session->leadconn == conn)
  session->leadconn = ((void*)0);
 spin_unlock_bh(&session->frwd_lock);
 mutex_unlock(&session->eh_mutex);

 iscsi_destroy_conn(cls_conn);
}
