
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_task {TYPE_1__* conn; } ;
struct iscsi_session {int back_lock; } ;
struct TYPE_2__ {struct iscsi_session* session; } ;


 int __iscsi_put_task (struct iscsi_task*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iscsi_put_task(struct iscsi_task *task)
{
 struct iscsi_session *session = task->conn->session;


 spin_lock_bh(&session->back_lock);
 __iscsi_put_task(task);
 spin_unlock_bh(&session->back_lock);
}
