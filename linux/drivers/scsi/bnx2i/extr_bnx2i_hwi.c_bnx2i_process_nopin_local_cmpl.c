
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_task {int dummy; } ;
struct iscsi_session {int back_lock; } ;
struct iscsi_conn {int dummy; } ;
struct cqe {int dummy; } ;
struct bnx2i_nop_in_msg {int itt; } ;
struct bnx2i_conn {TYPE_1__* cls_conn; } ;
struct TYPE_2__ {struct iscsi_conn* dd_data; } ;


 int ISCSI_NOP_IN_MSG_INDEX ;
 int __iscsi_put_task (struct iscsi_task*) ;
 struct iscsi_task* iscsi_itt_to_task (struct iscsi_conn*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void bnx2i_process_nopin_local_cmpl(struct iscsi_session *session,
        struct bnx2i_conn *bnx2i_conn,
        struct cqe *cqe)
{
 struct iscsi_conn *conn = bnx2i_conn->cls_conn->dd_data;
 struct bnx2i_nop_in_msg *nop_in;
 struct iscsi_task *task;

 nop_in = (struct bnx2i_nop_in_msg *)cqe;
 spin_lock(&session->back_lock);
 task = iscsi_itt_to_task(conn,
     nop_in->itt & ISCSI_NOP_IN_MSG_INDEX);
 if (task)
  __iscsi_put_task(task);
 spin_unlock(&session->back_lock);
}
