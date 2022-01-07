
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_session {scalar_t__ state; int frwd_lock; struct iscsi_conn* leadconn; } ;
struct iscsi_conn {TYPE_1__* cls_conn; } ;
struct device {int dummy; } ;
typedef enum iscsi_err { ____Placeholder_iscsi_err } iscsi_err ;
struct TYPE_2__ {int dev; } ;


 int ISCSI_ERR_INVALID_HOST ;
 scalar_t__ ISCSI_STATE_TERMINATE ;
 struct device* get_device (int *) ;
 int iscsi_conn_error_event (TYPE_1__*,int) ;
 int iscsi_conn_failure (struct iscsi_conn*,int) ;
 int put_device (struct device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iscsi_session_failure(struct iscsi_session *session,
      enum iscsi_err err)
{
 struct iscsi_conn *conn;
 struct device *dev;

 spin_lock_bh(&session->frwd_lock);
 conn = session->leadconn;
 if (session->state == ISCSI_STATE_TERMINATE || !conn) {
  spin_unlock_bh(&session->frwd_lock);
  return;
 }

 dev = get_device(&conn->cls_conn->dev);
 spin_unlock_bh(&session->frwd_lock);
 if (!dev)
         return;





 if (err == ISCSI_ERR_INVALID_HOST)
  iscsi_conn_error_event(conn->cls_conn, err);
 else
  iscsi_conn_failure(conn, err);
 put_device(dev);
}
