
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_task {int running; struct iscsi_conn* conn; } ;
struct iscsi_conn {int taskqueuelock; int requeue; } ;


 int iscsi_conn_queue_work (struct iscsi_conn*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iscsi_requeue_task(struct iscsi_task *task)
{
 struct iscsi_conn *conn = task->conn;





 spin_lock_bh(&conn->taskqueuelock);
 if (list_empty(&task->running))
  list_add_tail(&task->running, &conn->requeue);
 spin_unlock_bh(&conn->taskqueuelock);
 iscsi_conn_queue_work(conn);
}
