#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  size_t u16 ;
struct qedf_rport {int /*<<< orphan*/  rport_lock; struct fcoe_wqe* sq; TYPE_2__* rdata; int /*<<< orphan*/  free_sqes; struct qedf_ctx* qedf; int /*<<< orphan*/  flags; } ;
struct qedf_ioreq {int return_scsi_cmd_on_abts; scalar_t__ tm_flags; int /*<<< orphan*/  event; int /*<<< orphan*/  xid; int /*<<< orphan*/ * sc_cmd; int /*<<< orphan*/  tm_done; int /*<<< orphan*/  flags; int /*<<< orphan*/  cleanup_done; TYPE_3__* task_params; int /*<<< orphan*/  cmd_type; int /*<<< orphan*/  refcount; struct qedf_rport* fcport; } ;
struct qedf_ctx {int /*<<< orphan*/  dbg_ctx; int /*<<< orphan*/  tasks; } ;
struct fcoe_wqe {int dummy; } ;
struct e4_fcoe_task_context {int dummy; } ;
struct TYPE_6__ {struct fcoe_wqe* sqe; } ;
struct TYPE_4__ {int /*<<< orphan*/  port_id; } ;
struct TYPE_5__ {TYPE_1__ ids; } ;

/* Variables and functions */
 int /*<<< orphan*/  DID_ERROR ; 
 int FAILED ; 
 scalar_t__ FCP_TMF_LUN_RESET ; 
 scalar_t__ FCP_TMF_TGT_RESET ; 
 int HZ ; 
 int /*<<< orphan*/  QEDF_CLEANUP ; 
 int QEDF_CLEANUP_TIMEOUT ; 
 int /*<<< orphan*/  QEDF_CMD_IN_CLEANUP ; 
 int /*<<< orphan*/  QEDF_CMD_OUTSTANDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  QEDF_IOREQ_EV_CLEANUP_FAILED ; 
 int /*<<< orphan*/  QEDF_IOREQ_EV_CLEANUP_SUCCESS ; 
 int /*<<< orphan*/  QEDF_LOG_IO ; 
 int /*<<< orphan*/  QEDF_LOG_SCSI_TM ; 
 int /*<<< orphan*/  QEDF_RPORT_SESSION_READY ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct fcoe_wqe*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct qedf_ctx*) ; 
 size_t FUNC10 (struct qedf_rport*) ; 
 struct e4_fcoe_task_context* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct qedf_rport*) ; 
 int /*<<< orphan*/  FUNC13 (struct qedf_ctx*,struct qedf_ioreq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *,int) ; 

int FUNC20(struct qedf_ioreq *io_req,
	bool return_scsi_cmd_on_abts)
{
	struct qedf_rport *fcport;
	struct qedf_ctx *qedf;
	uint16_t xid;
	struct e4_fcoe_task_context *task;
	int tmo = 0;
	int rc = SUCCESS;
	unsigned long flags;
	struct fcoe_wqe *sqe;
	u16 sqe_idx;
	int refcount = 0;

	fcport = io_req->fcport;
	if (!fcport) {
		FUNC0(NULL, "fcport is NULL.\n");
		return SUCCESS;
	}

	/* Sanity check qedf_rport before dereferencing any pointers */
	if (!FUNC18(QEDF_RPORT_SESSION_READY, &fcport->flags)) {
		FUNC0(NULL, "tgt not offloaded\n");
		rc = 1;
		return SUCCESS;
	}

	qedf = fcport->qedf;
	if (!qedf) {
		FUNC0(NULL, "qedf is NULL.\n");
		return SUCCESS;
	}

	if (!FUNC18(QEDF_CMD_OUTSTANDING, &io_req->flags) ||
	    FUNC17(QEDF_CMD_IN_CLEANUP, &io_req->flags)) {
		FUNC0(&(qedf->dbg_ctx), "io_req xid=0x%x already in "
			  "cleanup processing or already completed.\n",
			  io_req->xid);
		return SUCCESS;
	}
	FUNC14(QEDF_CMD_IN_CLEANUP, &io_req->flags);

	/* Ensure room on SQ */
	if (!FUNC2(&fcport->free_sqes)) {
		FUNC0(&(qedf->dbg_ctx), "No SQ entries available\n");
		/* Need to make sure we clear the flag since it was set */
		FUNC3(QEDF_CMD_IN_CLEANUP, &io_req->flags);
		return FAILED;
	}

	if (io_req->cmd_type == QEDF_CLEANUP) {
		FUNC0(&qedf->dbg_ctx,
			 "io_req=0x%x is already a cleanup command cmd_type=%d.\n",
			 io_req->xid, io_req->cmd_type);
		FUNC3(QEDF_CMD_IN_CLEANUP, &io_req->flags);
		return SUCCESS;
	}

	refcount = FUNC7(&io_req->refcount);

	FUNC1(&qedf->dbg_ctx, QEDF_LOG_IO,
		  "Entered xid=0x%x sc_cmd=%p cmd_type=%d flags=0x%lx refcount=%d fcport=%p port_id=0x%06x\n",
		  io_req->xid, io_req->sc_cmd, io_req->cmd_type, io_req->flags,
		  refcount, fcport, fcport->rdata->ids.port_id);

	/* Cleanup cmds re-use the same TID as the original I/O */
	xid = io_req->xid;
	io_req->cmd_type = QEDF_CLEANUP;
	io_req->return_scsi_cmd_on_abts = return_scsi_cmd_on_abts;

	task = FUNC11(&qedf->tasks, xid);

	FUNC5(&io_req->cleanup_done);

	FUNC15(&fcport->rport_lock, flags);

	sqe_idx = FUNC10(fcport);
	sqe = &fcport->sq[sqe_idx];
	FUNC8(sqe, 0, sizeof(struct fcoe_wqe));
	io_req->task_params->sqe = sqe;

	FUNC6(io_req->task_params);
	FUNC12(fcport);

	FUNC16(&fcport->rport_lock, flags);

	tmo = FUNC19(&io_req->cleanup_done,
					  QEDF_CLEANUP_TIMEOUT * HZ);

	if (!tmo) {
		rc = FAILED;
		/* Timeout case */
		FUNC0(&(qedf->dbg_ctx), "Cleanup command timeout, "
			  "xid=%x.\n", io_req->xid);
		FUNC3(QEDF_CMD_IN_CLEANUP, &io_req->flags);
		/* Issue a drain request if cleanup task times out */
		FUNC0(&(qedf->dbg_ctx), "Issuing MCP drain request.\n");
		FUNC9(qedf);
	}

	/* If it TASK MGMT handle it, reference will be decreased
	 * in qedf_execute_tmf
	 */
	if (io_req->tm_flags  == FCP_TMF_LUN_RESET ||
	    io_req->tm_flags == FCP_TMF_TGT_RESET) {
		FUNC3(QEDF_CMD_OUTSTANDING, &io_req->flags);
		io_req->sc_cmd = NULL;
		FUNC4(&io_req->tm_done);
	}

	if (io_req->sc_cmd) {
		if (!io_req->return_scsi_cmd_on_abts)
			FUNC1(&qedf->dbg_ctx, QEDF_LOG_SCSI_TM,
				  "Not call scsi_done for xid=0x%x.\n",
				  io_req->xid);
		if (io_req->return_scsi_cmd_on_abts)
			FUNC13(qedf, io_req, DID_ERROR);
	}

	if (rc == SUCCESS)
		io_req->event = QEDF_IOREQ_EV_CLEANUP_SUCCESS;
	else
		io_req->event = QEDF_IOREQ_EV_CLEANUP_FAILED;

	return rc;
}