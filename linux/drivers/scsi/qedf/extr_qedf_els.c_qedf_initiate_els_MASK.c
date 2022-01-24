#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  size_t u16 ;
struct qedf_rport {int /*<<< orphan*/  rport_lock; struct fcoe_wqe* sq; int /*<<< orphan*/  sid; TYPE_2__* rdata; int /*<<< orphan*/  flags; int /*<<< orphan*/  rport; struct qedf_ctx* qedf; } ;
struct fc_frame_header {int dummy; } ;
struct qedf_mp_req {struct fc_frame_header req_fc_hdr; int /*<<< orphan*/  req_buf; } ;
struct qedf_ioreq {void (* cb_func ) (struct qedf_els_cb_arg*) ;int /*<<< orphan*/  flags; int /*<<< orphan*/  xid; int /*<<< orphan*/  refcount; struct qedf_els_cb_arg* cb_arg; int /*<<< orphan*/  mp_req; int /*<<< orphan*/  cpu; int /*<<< orphan*/  data_xfer_len; struct qedf_rport* fcport; int /*<<< orphan*/  cmd_type; int /*<<< orphan*/ * sc_cmd; } ;
struct qedf_els_cb_arg {unsigned int op; struct qedf_ioreq* io_req; } ;
struct qedf_ctx {int /*<<< orphan*/  dbg_ctx; int /*<<< orphan*/  tasks; struct fc_lport* lport; } ;
struct fcoe_wqe {int dummy; } ;
struct fc_lport {scalar_t__ state; int /*<<< orphan*/  link_up; } ;
struct e4_fcoe_task_context {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  port_id; } ;
struct TYPE_4__ {TYPE_1__ ids; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 unsigned int ELS_AUTH_ELS ; 
 unsigned int ELS_LS_RJT ; 
 int ENOMEM ; 
 int FC_FC_END_SEQ ; 
 int FC_FC_FIRST_SEQ ; 
 int FC_FC_SEQ_INIT ; 
 int /*<<< orphan*/  FC_RCTL_ELS_REQ ; 
 int /*<<< orphan*/  FC_TYPE_ELS ; 
 scalar_t__ LPORT_ST_READY ; 
 int /*<<< orphan*/  QEDF_CMD_OUTSTANDING ; 
 int /*<<< orphan*/  QEDF_ELS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  QEDF_LOG_ELS ; 
 int /*<<< orphan*/  QEDF_RPORT_SESSION_READY ; 
 int /*<<< orphan*/  FUNC2 (struct fc_frame_header*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fcoe_wqe*,int /*<<< orphan*/ ,int) ; 
 struct qedf_ioreq* FUNC7 (struct qedf_rport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct qedf_ctx*,struct qedf_ioreq*,int /*<<< orphan*/ ) ; 
 size_t FUNC9 (struct qedf_rport*) ; 
 struct e4_fcoe_task_context* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct qedf_ioreq*) ; 
 int /*<<< orphan*/  FUNC12 (struct qedf_ioreq*,struct e4_fcoe_task_context*,struct fcoe_wqe*) ; 
 int /*<<< orphan*/  qedf_release_cmd ; 
 int /*<<< orphan*/  FUNC13 (struct qedf_rport*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct qedf_rport *fcport, unsigned int op,
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
		FUNC0(NULL, "fcport is NULL");
		rc = -EINVAL;
		goto els_err;
	}

	qedf = fcport->qedf;
	lport = qedf->lport;

	FUNC1(&(qedf->dbg_ctx), QEDF_LOG_ELS, "Sending ELS\n");

	rc = FUNC3(fcport->rport);
	if (rc) {
		FUNC0(&(qedf->dbg_ctx), "els 0x%x: rport not ready\n", op);
		rc = -EAGAIN;
		goto els_err;
	}
	if (lport->state != LPORT_ST_READY || !(lport->link_up)) {
		FUNC0(&(qedf->dbg_ctx), "els 0x%x: link is not ready\n",
			  op);
		rc = -EAGAIN;
		goto els_err;
	}

	if (!FUNC18(QEDF_RPORT_SESSION_READY, &fcport->flags)) {
		FUNC0(&(qedf->dbg_ctx), "els 0x%x: fcport not ready\n", op);
		rc = -EINVAL;
		goto els_err;
	}

	els_req = FUNC7(fcport, QEDF_ELS);
	if (!els_req) {
		FUNC1(&qedf->dbg_ctx, QEDF_LOG_ELS,
			  "Failed to alloc ELS request 0x%x\n", op);
		rc = -ENOMEM;
		goto els_err;
	}

	FUNC1(&(qedf->dbg_ctx), QEDF_LOG_ELS, "initiate_els els_req = "
		   "0x%p cb_arg = %p xid = %x\n", els_req, cb_arg,
		   els_req->xid);
	els_req->sc_cmd = NULL;
	els_req->cmd_type = QEDF_ELS;
	els_req->fcport = fcport;
	els_req->cb_func = cb_func;
	cb_arg->io_req = els_req;
	cb_arg->op = op;
	els_req->cb_arg = cb_arg;
	els_req->data_xfer_len = data_len;

	/* Record which cpu this request is associated with */
	els_req->cpu = FUNC15();

	mp_req = (struct qedf_mp_req *)&(els_req->mp_req);
	rc = FUNC11(els_req);
	if (rc) {
		FUNC0(&(qedf->dbg_ctx), "ELS MP request init failed\n");
		FUNC4(&els_req->refcount, qedf_release_cmd);
		goto els_err;
	} else {
		rc = 0;
	}

	/* Fill ELS Payload */
	if ((op >= ELS_LS_RJT) && (op <= ELS_AUTH_ELS)) {
		FUNC5(mp_req->req_buf, data, data_len);
	} else {
		FUNC0(&(qedf->dbg_ctx), "Invalid ELS op 0x%x\n", op);
		els_req->cb_func = NULL;
		els_req->cb_arg = NULL;
		FUNC4(&els_req->refcount, qedf_release_cmd);
		rc = -EINVAL;
	}

	if (rc)
		goto els_err;

	/* Fill FC header */
	fc_hdr = &(mp_req->req_fc_hdr);

	did = fcport->rdata->ids.port_id;
	sid = fcport->sid;

	FUNC2(fc_hdr, FC_RCTL_ELS_REQ, did, sid,
			   FC_TYPE_ELS, FC_FC_FIRST_SEQ | FC_FC_END_SEQ |
			   FC_FC_SEQ_INIT, 0);

	/* Obtain exchange id */
	xid = els_req->xid;

	FUNC16(&fcport->rport_lock, flags);

	sqe_idx = FUNC9(fcport);
	sqe = &fcport->sq[sqe_idx];
	FUNC6(sqe, 0, sizeof(struct fcoe_wqe));

	/* Initialize task context for this IO request */
	task = FUNC10(&qedf->tasks, xid);
	FUNC12(els_req, task, sqe);

	/* Put timer on original I/O request */
	if (timer_msec)
		FUNC8(qedf, els_req, timer_msec);

	/* Ring doorbell */
	FUNC1(&(qedf->dbg_ctx), QEDF_LOG_ELS, "Ringing doorbell for ELS "
		   "req\n");
	FUNC13(fcport);
	FUNC14(QEDF_CMD_OUTSTANDING, &els_req->flags);

	FUNC17(&fcport->rport_lock, flags);
els_err:
	return rc;
}