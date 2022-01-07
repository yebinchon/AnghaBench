
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct qedf_rport {int free_sqes; int flags; } ;
struct qedf_ioreq {int cmd_type; struct qedf_rport* fcport; } ;
struct qedf_ctx {int dbg_ctx; TYPE_1__* cmd_mgr; } ;
struct fcoe_cqe {int cqe_data; } ;
struct TYPE_2__ {struct qedf_ioreq* cmds; } ;



 int FCOE_CQE_CQE_TYPE_MASK ;
 int FCOE_CQE_CQE_TYPE_SHIFT ;
 size_t FCOE_CQE_TASK_ID_MASK ;
 int QEDF_ERR (int *,char*,...) ;
 int QEDF_INFO (int *,int ,char*) ;
 int QEDF_LOG_IO ;
 int QEDF_RPORT_SESSION_READY ;



 int atomic_inc (int *) ;
 int qedf_process_abts_compl (struct qedf_ctx*,struct fcoe_cqe*,struct qedf_ioreq*) ;
 int qedf_process_cleanup_compl (struct qedf_ctx*,struct fcoe_cqe*,struct qedf_ioreq*) ;
 int qedf_process_els_compl (struct qedf_ctx*,struct fcoe_cqe*,struct qedf_ioreq*) ;
 int qedf_process_error_detect (struct qedf_ctx*,struct fcoe_cqe*,struct qedf_ioreq*) ;
 int qedf_process_seq_cleanup_compl (struct qedf_ctx*,struct fcoe_cqe*,struct qedf_ioreq*) ;
 int qedf_process_tmf_compl (struct qedf_ctx*,struct fcoe_cqe*,struct qedf_ioreq*) ;
 int qedf_process_warning_compl (struct qedf_ctx*,struct fcoe_cqe*,struct qedf_ioreq*) ;
 int qedf_scsi_completion (struct qedf_ctx*,struct fcoe_cqe*,struct qedf_ioreq*) ;
 int test_bit (int ,int *) ;

void qedf_process_cqe(struct qedf_ctx *qedf, struct fcoe_cqe *cqe)
{
 u16 xid;
 struct qedf_ioreq *io_req;
 struct qedf_rport *fcport;
 u32 comp_type;

 comp_type = (cqe->cqe_data >> FCOE_CQE_CQE_TYPE_SHIFT) &
     FCOE_CQE_CQE_TYPE_MASK;

 xid = cqe->cqe_data & FCOE_CQE_TASK_ID_MASK;
 io_req = &qedf->cmd_mgr->cmds[xid];


 if (!io_req) {
  QEDF_ERR(&qedf->dbg_ctx,
    "io_req is NULL for xid=0x%x.\n", xid);
  return;
 }

 fcport = io_req->fcport;

 if (fcport == ((void*)0)) {
  QEDF_ERR(&qedf->dbg_ctx,
    "fcport is NULL for xid=0x%x io_req=%p.\n",
    xid, io_req);
  return;
 }





 if (!test_bit(QEDF_RPORT_SESSION_READY, &fcport->flags)) {
  QEDF_ERR(&qedf->dbg_ctx,
    "Session not offloaded yet, fcport = %p.\n", fcport);
  return;
 }


 switch (comp_type) {
 case 135:
  atomic_inc(&fcport->free_sqes);
  switch (io_req->cmd_type) {
  case 130:
   qedf_scsi_completion(qedf, cqe, io_req);
   break;
  case 131:
   qedf_process_els_compl(qedf, cqe, io_req);
   break;
  case 128:
   qedf_process_tmf_compl(qedf, cqe, io_req);
   break;
  case 129:
   qedf_process_seq_cleanup_compl(qedf, cqe, io_req);
   break;
  }
  break;
 case 137:
  atomic_inc(&fcport->free_sqes);
  QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_IO,
      "Error detect CQE.\n");
  qedf_process_error_detect(qedf, cqe, io_req);
  break;
 case 136:
  atomic_inc(&fcport->free_sqes);
  QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_IO,
      "Cleanup CQE.\n");
  qedf_process_cleanup_compl(qedf, cqe, io_req);
  break;
 case 139:
  atomic_inc(&fcport->free_sqes);
  QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_IO,
      "Abort CQE.\n");
  qedf_process_abts_compl(qedf, cqe, io_req);
  break;
 case 138:
  atomic_inc(&fcport->free_sqes);
  QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_IO,
      "Dummy CQE.\n");
  break;
 case 134:
  atomic_inc(&fcport->free_sqes);
  QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_IO,
      "Local completion CQE.\n");
  break;
 case 133:
  atomic_inc(&fcport->free_sqes);
  QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_IO,
      "Warning CQE.\n");
  qedf_process_warning_compl(qedf, cqe, io_req);
  break;
 case 132:
  atomic_inc(&fcport->free_sqes);
  QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_IO,
      "Max FCoE CQE.\n");
  break;
 default:
  QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_IO,
      "Default CQE.\n");
  break;
 }
}
