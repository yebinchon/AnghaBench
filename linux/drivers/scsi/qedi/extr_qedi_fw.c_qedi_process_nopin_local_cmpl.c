
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedi_ctx {int dbg_ctx; } ;
struct qedi_conn {TYPE_1__* cls_conn; } ;
struct qedi_cmd {int task_id; int state; } ;
struct iscsi_task {struct qedi_cmd* dd_data; } ;
struct iscsi_session {int back_lock; } ;
struct iscsi_cqe_solicited {int itid; } ;
struct iscsi_conn {struct iscsi_session* session; } ;
struct TYPE_2__ {struct iscsi_conn* dd_data; } ;


 int QEDI_INFO (int *,int ,char*,int ,int ) ;
 int QEDI_LOG_UNSOL ;
 int RESPONSE_RECEIVED ;
 int __iscsi_put_task (struct iscsi_task*) ;
 int qedi_clear_task_idx (struct qedi_ctx*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void qedi_process_nopin_local_cmpl(struct qedi_ctx *qedi,
       struct iscsi_cqe_solicited *cqe,
       struct iscsi_task *task,
       struct qedi_conn *qedi_conn)
{
 struct iscsi_conn *conn = qedi_conn->cls_conn->dd_data;
 struct iscsi_session *session = conn->session;
 struct qedi_cmd *cmd = task->dd_data;

 QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_UNSOL,
    "itid=0x%x, cmd task id=0x%x\n",
    cqe->itid, cmd->task_id);

 cmd->state = RESPONSE_RECEIVED;
 qedi_clear_task_idx(qedi, cmd->task_id);

 spin_lock_bh(&session->back_lock);
 __iscsi_put_task(task);
 spin_unlock_bh(&session->back_lock);
}
