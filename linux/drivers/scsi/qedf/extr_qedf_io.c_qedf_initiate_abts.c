
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct qedf_rport {int rport_lock; struct fcoe_wqe* sq; int flags; int free_sqes; struct fc_rport_priv* rdata; struct qedf_ctx* qedf; } ;
struct qedf_ioreq {size_t xid; int return_scsi_cmd_on_abts; TYPE_1__* task_params; int refcount; int flags; int cmd_type; int sc_cmd; struct qedf_rport* fcport; } ;
struct qedf_ctx {int dbg_ctx; int packet_aborts; int control_requests; int link_down_tmo_valid; struct fc_lport* lport; } ;
struct fcoe_wqe {int dummy; } ;
struct fc_rport_priv {int kref; int r_a_tov; } ;
struct fc_lport {scalar_t__ state; int link_up; } ;
struct TYPE_2__ {struct fcoe_wqe* sqe; } ;


 scalar_t__ LPORT_ST_READY ;
 int QEDF_ABORT_TIMEOUT ;
 int QEDF_ABTS ;
 int QEDF_CMD_IN_ABORT ;
 int QEDF_CMD_IN_CLEANUP ;
 int QEDF_CMD_OUTSTANDING ;
 int QEDF_ERR (int *,char*,...) ;
 int QEDF_INFO (int *,int ,char*,size_t,int) ;
 int QEDF_LOG_SCSI_TM ;
 int QEDF_RPORT_SESSION_READY ;
 int QEDF_RPORT_UPLOADING_CONNECTION ;
 scalar_t__ atomic_read (int *) ;
 int fc_rport_destroy ;
 int init_initiator_abort_fcoe_task (TYPE_1__*) ;
 int kref_get (int *) ;
 int kref_get_unless_zero (int *) ;
 int kref_put (int *,int ) ;
 int kref_read (int *) ;
 int memset (struct fcoe_wqe*,int ,int) ;
 int qedf_cmd_timer_set (struct qedf_ctx*,struct qedf_ioreq*,int ) ;
 size_t qedf_get_sqe_idx (struct qedf_rport*) ;
 int qedf_ring_doorbell (struct qedf_rport*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

int qedf_initiate_abts(struct qedf_ioreq *io_req, bool return_scsi_cmd_on_abts)
{
 struct fc_lport *lport;
 struct qedf_rport *fcport = io_req->fcport;
 struct fc_rport_priv *rdata;
 struct qedf_ctx *qedf;
 u16 xid;
 u32 r_a_tov = 0;
 int rc = 0;
 unsigned long flags;
 struct fcoe_wqe *sqe;
 u16 sqe_idx;
 int refcount = 0;


 if (!test_bit(QEDF_RPORT_SESSION_READY, &fcport->flags)) {
  QEDF_ERR(((void*)0), "tgt not offloaded\n");
  rc = 1;
  goto out;
 }

 qedf = fcport->qedf;
 rdata = fcport->rdata;

 if (!rdata || !kref_get_unless_zero(&rdata->kref)) {
  QEDF_ERR(&qedf->dbg_ctx, "stale rport\n");
  rc = 1;
  goto out;
 }

 r_a_tov = rdata->r_a_tov;
 lport = qedf->lport;

 if (lport->state != LPORT_ST_READY || !(lport->link_up)) {
  QEDF_ERR(&(qedf->dbg_ctx), "link is not ready\n");
  rc = 1;
  goto drop_rdata_kref;
 }

 if (atomic_read(&qedf->link_down_tmo_valid) > 0) {
  QEDF_ERR(&(qedf->dbg_ctx), "link_down_tmo active.\n");
  rc = 1;
  goto drop_rdata_kref;
 }


 if (!atomic_read(&fcport->free_sqes)) {
  QEDF_ERR(&(qedf->dbg_ctx), "No SQ entries available\n");
  rc = 1;
  goto drop_rdata_kref;
 }

 if (test_bit(QEDF_RPORT_UPLOADING_CONNECTION, &fcport->flags)) {
  QEDF_ERR(&qedf->dbg_ctx, "fcport is uploading.\n");
  rc = 1;
  goto drop_rdata_kref;
 }

 if (!test_bit(QEDF_CMD_OUTSTANDING, &io_req->flags) ||
     test_bit(QEDF_CMD_IN_CLEANUP, &io_req->flags) ||
     test_bit(QEDF_CMD_IN_ABORT, &io_req->flags)) {
  QEDF_ERR(&qedf->dbg_ctx,
    "io_req xid=0x%x sc_cmd=%p already in cleanup or abort processing or already completed.\n",
    io_req->xid, io_req->sc_cmd);
  rc = 1;
  goto drop_rdata_kref;
 }

 kref_get(&io_req->refcount);

 xid = io_req->xid;
 qedf->control_requests++;
 qedf->packet_aborts++;


 io_req->cmd_type = QEDF_ABTS;
 io_req->return_scsi_cmd_on_abts = return_scsi_cmd_on_abts;

 set_bit(QEDF_CMD_IN_ABORT, &io_req->flags);
 refcount = kref_read(&io_req->refcount);
 QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_SCSI_TM,
    "ABTS io_req xid = 0x%x refcount=%d\n",
    xid, refcount);

 qedf_cmd_timer_set(qedf, io_req, QEDF_ABORT_TIMEOUT);

 spin_lock_irqsave(&fcport->rport_lock, flags);

 sqe_idx = qedf_get_sqe_idx(fcport);
 sqe = &fcport->sq[sqe_idx];
 memset(sqe, 0, sizeof(struct fcoe_wqe));
 io_req->task_params->sqe = sqe;

 init_initiator_abort_fcoe_task(io_req->task_params);
 qedf_ring_doorbell(fcport);

 spin_unlock_irqrestore(&fcport->rport_lock, flags);

drop_rdata_kref:
 kref_put(&rdata->kref, fc_rport_destroy);
out:
 return rc;
}
