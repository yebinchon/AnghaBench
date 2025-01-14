
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_ctx {int dbg_ctx; int tmf_thread; } ;
struct qedi_conn {int iscsi_conn_id; struct qedi_ctx* qedi; } ;
struct qedi_cmd {int task_id; struct iscsi_task* task; int tmf_work; int state; } ;
struct iscsi_tm {int flags; } ;
struct iscsi_task {scalar_t__ hdr; scalar_t__ dd_data; } ;
typedef int s16 ;


 int CLEANUP_WAIT ;
 int INIT_WORK (int *,int ) ;
 int ISCSI_FLAG_TM_FUNC_MASK ;
 int ISCSI_TM_FUNC_ABORT_TASK ;
 int ISCSI_TM_FUNC_LOGICAL_UNIT_RESET ;
 int ISCSI_TM_FUNC_TARGET_COLD_RESET ;
 int ISCSI_TM_FUNC_TARGET_WARM_RESET ;
 int QEDI_ERR (int *,char*,int ) ;
 int qedi_get_task_idx (struct qedi_ctx*) ;
 int qedi_send_iscsi_tmf (struct qedi_conn*,struct iscsi_task*) ;
 int qedi_tmf_work ;
 int queue_work (int ,int *) ;

int qedi_iscsi_abort_work(struct qedi_conn *qedi_conn,
     struct iscsi_task *mtask)
{
 struct qedi_ctx *qedi = qedi_conn->qedi;
 struct iscsi_tm *tmf_hdr;
 struct qedi_cmd *qedi_cmd = (struct qedi_cmd *)mtask->dd_data;
 s16 tid = 0;

 tmf_hdr = (struct iscsi_tm *)mtask->hdr;
 qedi_cmd->task = mtask;


 if ((tmf_hdr->flags & ISCSI_FLAG_TM_FUNC_MASK) ==
     ISCSI_TM_FUNC_ABORT_TASK) {
  qedi_cmd->state = CLEANUP_WAIT;
  INIT_WORK(&qedi_cmd->tmf_work, qedi_tmf_work);
  queue_work(qedi->tmf_thread, &qedi_cmd->tmf_work);

 } else if (((tmf_hdr->flags & ISCSI_FLAG_TM_FUNC_MASK) ==
      ISCSI_TM_FUNC_LOGICAL_UNIT_RESET) ||
     ((tmf_hdr->flags & ISCSI_FLAG_TM_FUNC_MASK) ==
      ISCSI_TM_FUNC_TARGET_WARM_RESET) ||
     ((tmf_hdr->flags & ISCSI_FLAG_TM_FUNC_MASK) ==
      ISCSI_TM_FUNC_TARGET_COLD_RESET)) {
  tid = qedi_get_task_idx(qedi);
  if (tid == -1) {
   QEDI_ERR(&qedi->dbg_ctx, "Invalid tid, cid=0x%x\n",
     qedi_conn->iscsi_conn_id);
   return -1;
  }
  qedi_cmd->task_id = tid;

  qedi_send_iscsi_tmf(qedi_conn, qedi_cmd->task);

 } else {
  QEDI_ERR(&qedi->dbg_ctx, "Invalid tmf, cid=0x%x\n",
    qedi_conn->iscsi_conn_id);
  return -1;
 }

 return 0;
}
