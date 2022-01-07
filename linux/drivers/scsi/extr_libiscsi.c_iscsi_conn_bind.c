
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int frwd_lock; struct iscsi_conn* leadconn; } ;
struct iscsi_conn {int suspend_tx; int suspend_rx; } ;
struct iscsi_cls_session {struct iscsi_session* dd_data; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;


 int ISCSI_SUSPEND_BIT ;
 int clear_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int iscsi_conn_bind(struct iscsi_cls_session *cls_session,
      struct iscsi_cls_conn *cls_conn, int is_leading)
{
 struct iscsi_session *session = cls_session->dd_data;
 struct iscsi_conn *conn = cls_conn->dd_data;

 spin_lock_bh(&session->frwd_lock);
 if (is_leading)
  session->leadconn = conn;
 spin_unlock_bh(&session->frwd_lock);




 clear_bit(ISCSI_SUSPEND_BIT, &conn->suspend_rx);
 clear_bit(ISCSI_SUSPEND_BIT, &conn->suspend_tx);
 return 0;
}
