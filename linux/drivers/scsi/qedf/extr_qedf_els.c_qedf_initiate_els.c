
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef size_t u16 ;
struct qedf_rport {int rport_lock; struct fcoe_wqe* sq; int sid; TYPE_2__* rdata; int flags; int rport; struct qedf_ctx* qedf; } ;
struct fc_frame_header {int dummy; } ;
struct qedf_mp_req {struct fc_frame_header req_fc_hdr; int req_buf; } ;
struct qedf_ioreq {void (* cb_func ) (struct qedf_els_cb_arg*) ;int flags; int xid; int refcount; struct qedf_els_cb_arg* cb_arg; int mp_req; int cpu; int data_xfer_len; struct qedf_rport* fcport; int cmd_type; int * sc_cmd; } ;
struct qedf_els_cb_arg {unsigned int op; struct qedf_ioreq* io_req; } ;
struct qedf_ctx {int dbg_ctx; int tasks; struct fc_lport* lport; } ;
struct fcoe_wqe {int dummy; } ;
struct fc_lport {scalar_t__ state; int link_up; } ;
struct e4_fcoe_task_context {int dummy; } ;
struct TYPE_3__ {int port_id; } ;
struct TYPE_4__ {TYPE_1__ ids; } ;


 int EAGAIN ;
 int EINVAL ;
 unsigned int ELS_AUTH_ELS ;
 unsigned int ELS_LS_RJT ;
 int ENOMEM ;
 int FC_FC_END_SEQ ;
 int FC_FC_FIRST_SEQ ;
 int FC_FC_SEQ_INIT ;
 int FC_RCTL_ELS_REQ ;
 int FC_TYPE_ELS ;
 scalar_t__ LPORT_ST_READY ;
 int QEDF_CMD_OUTSTANDING ;
 int QEDF_ELS ;
 int QEDF_ERR (int *,char*,...) ;
 int QEDF_INFO (int *,int ,char*,...) ;
 int QEDF_LOG_ELS ;
 int QEDF_RPORT_SESSION_READY ;
 int __fc_fill_fc_hdr (struct fc_frame_header*,int ,int ,int ,int ,int,int ) ;
 int fc_remote_port_chkready (int ) ;
 int kref_put (int *,int ) ;
 int memcpy (int ,void*,int ) ;
 int memset (struct fcoe_wqe*,int ,int) ;
 struct qedf_ioreq* qedf_alloc_cmd (struct qedf_rport*,int ) ;
 int qedf_cmd_timer_set (struct qedf_ctx*,struct qedf_ioreq*,int ) ;
 size_t qedf_get_sqe_idx (struct qedf_rport*) ;
 struct e4_fcoe_task_context* qedf_get_task_mem (int *,int ) ;
 int qedf_init_mp_req (struct qedf_ioreq*) ;
 int qedf_init_mp_task (struct qedf_ioreq*,struct e4_fcoe_task_context*,struct fcoe_wqe*) ;
 int qedf_release_cmd ;
 int qedf_ring_doorbell (struct qedf_rport*) ;
 int set_bit (int ,int *) ;
 int smp_processor_id () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int qedf_initiate_els(struct qedf_rport *fcport, unsigned int op,
 void *data, uint32_t data_len,
 void (*cb_func)(struct qedf_els_cb_arg *cb_arg),
 struct qedf_els_cb_arg *cb_arg, uint32_t timer_msec)
{
 struct qedf_ctx *qedf;
 struct fc_lport *lport;
 struct qedf_ioreq *els_req;
 struct qedf_mp_req *mp_req;
 struct fc_frame_header *fc_hdr;
 struct e4_fcoe_task_context *task;
 int rc = 0;
 uint32_t did, sid;
 uint16_t xid;
 struct fcoe_wqe *sqe;
 unsigned long flags;
 u16 sqe_idx;

 if (!fcport) {
  QEDF_ERR(((void*)0), "fcport is NULL");
  rc = -EINVAL;
  goto els_err;
 }

 qedf = fcport->qedf;
 lport = qedf->lport;

 QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_ELS, "Sending ELS\n");

 rc = fc_remote_port_chkready(fcport->rport);
 if (rc) {
  QEDF_ERR(&(qedf->dbg_ctx), "els 0x%x: rport not ready\n", op);
  rc = -EAGAIN;
  goto els_err;
 }
 if (lport->state != LPORT_ST_READY || !(lport->link_up)) {
  QEDF_ERR(&(qedf->dbg_ctx), "els 0x%x: link is not ready\n",
     op);
  rc = -EAGAIN;
  goto els_err;
 }

 if (!test_bit(QEDF_RPORT_SESSION_READY, &fcport->flags)) {
  QEDF_ERR(&(qedf->dbg_ctx), "els 0x%x: fcport not ready\n", op);
  rc = -EINVAL;
  goto els_err;
 }

 els_req = qedf_alloc_cmd(fcport, QEDF_ELS);
 if (!els_req) {
  QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_ELS,
     "Failed to alloc ELS request 0x%x\n", op);
  rc = -ENOMEM;
  goto els_err;
 }

 QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_ELS, "initiate_els els_req = "
     "0x%p cb_arg = %p xid = %x\n", els_req, cb_arg,
     els_req->xid);
 els_req->sc_cmd = ((void*)0);
 els_req->cmd_type = QEDF_ELS;
 els_req->fcport = fcport;
 els_req->cb_func = cb_func;
 cb_arg->io_req = els_req;
 cb_arg->op = op;
 els_req->cb_arg = cb_arg;
 els_req->data_xfer_len = data_len;


 els_req->cpu = smp_processor_id();

 mp_req = (struct qedf_mp_req *)&(els_req->mp_req);
 rc = qedf_init_mp_req(els_req);
 if (rc) {
  QEDF_ERR(&(qedf->dbg_ctx), "ELS MP request init failed\n");
  kref_put(&els_req->refcount, qedf_release_cmd);
  goto els_err;
 } else {
  rc = 0;
 }


 if ((op >= ELS_LS_RJT) && (op <= ELS_AUTH_ELS)) {
  memcpy(mp_req->req_buf, data, data_len);
 } else {
  QEDF_ERR(&(qedf->dbg_ctx), "Invalid ELS op 0x%x\n", op);
  els_req->cb_func = ((void*)0);
  els_req->cb_arg = ((void*)0);
  kref_put(&els_req->refcount, qedf_release_cmd);
  rc = -EINVAL;
 }

 if (rc)
  goto els_err;


 fc_hdr = &(mp_req->req_fc_hdr);

 did = fcport->rdata->ids.port_id;
 sid = fcport->sid;

 __fc_fill_fc_hdr(fc_hdr, FC_RCTL_ELS_REQ, did, sid,
      FC_TYPE_ELS, FC_FC_FIRST_SEQ | FC_FC_END_SEQ |
      FC_FC_SEQ_INIT, 0);


 xid = els_req->xid;

 spin_lock_irqsave(&fcport->rport_lock, flags);

 sqe_idx = qedf_get_sqe_idx(fcport);
 sqe = &fcport->sq[sqe_idx];
 memset(sqe, 0, sizeof(struct fcoe_wqe));


 task = qedf_get_task_mem(&qedf->tasks, xid);
 qedf_init_mp_task(els_req, task, sqe);


 if (timer_msec)
  qedf_cmd_timer_set(qedf, els_req, timer_msec);


 QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_ELS, "Ringing doorbell for ELS "
     "req\n");
 qedf_ring_doorbell(fcport);
 set_bit(QEDF_CMD_OUTSTANDING, &els_req->flags);

 spin_unlock_irqrestore(&fcport->rport_lock, flags);
els_err:
 return rc;
}
