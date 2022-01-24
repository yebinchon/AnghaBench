#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  size_t u16 ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct qedf_rport {int /*<<< orphan*/  flags; int /*<<< orphan*/  rport_lock; struct fcoe_wqe* sq; struct qedf_ctx* qedf; } ;
struct qedf_ioreq {int return_scsi_cmd_on_abts; scalar_t__ fcp_rsp_code; int /*<<< orphan*/  refcount; struct scsi_cmnd* sc_cmd; int /*<<< orphan*/  flags; int /*<<< orphan*/  tm_done; int /*<<< orphan*/  xid; scalar_t__ tm_flags; scalar_t__ data_xfer_len; int /*<<< orphan*/  io_req_flags; int /*<<< orphan*/  cpu; int /*<<< orphan*/  cmd_type; struct qedf_rport* fcport; } ;
struct qedf_ctx {int /*<<< orphan*/  dbg_ctx; int /*<<< orphan*/  tasks; int /*<<< orphan*/  target_resets; int /*<<< orphan*/  lun_resets; struct fc_lport* lport; } ;
struct fcoe_wqe {int dummy; } ;
struct fc_lport {int dummy; } ;
struct e4_fcoe_task_context {int dummy; } ;
struct TYPE_2__ {scalar_t__ lun; } ;

/* Variables and functions */
 int EAGAIN ; 
 int FAILED ; 
 scalar_t__ FCP_TMF_LUN_RESET ; 
 scalar_t__ FCP_TMF_TGT_RESET ; 
 int HZ ; 
 int /*<<< orphan*/  QEDF_CMD_OUTSTANDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QEDF_LOG_SCSI_TM ; 
 int /*<<< orphan*/  QEDF_READ ; 
 int /*<<< orphan*/  QEDF_RPORT_SESSION_READY ; 
 int /*<<< orphan*/  QEDF_RPORT_UPLOADING_CONNECTION ; 
 int /*<<< orphan*/  QEDF_TASK_MGMT_CMD ; 
 int QEDF_TM_TIMEOUT ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fcoe_wqe*,int /*<<< orphan*/ ,int) ; 
 struct qedf_ioreq* FUNC6 (struct qedf_rport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qedf_rport*,int) ; 
 size_t FUNC8 (struct qedf_rport*) ; 
 struct e4_fcoe_task_context* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct qedf_rport*,struct fc_lport*,struct qedf_ioreq*,struct e4_fcoe_task_context*,struct fcoe_wqe*) ; 
 int /*<<< orphan*/  qedf_release_cmd ; 
 int /*<<< orphan*/  FUNC11 (struct qedf_rport*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC18(struct qedf_rport *fcport, struct scsi_cmnd *sc_cmd,
	uint8_t tm_flags)
{
	struct qedf_ioreq *io_req;
	struct e4_fcoe_task_context *task;
	struct qedf_ctx *qedf = fcport->qedf;
	struct fc_lport *lport = qedf->lport;
	int rc = 0;
	uint16_t xid;
	int tmo = 0;
	int lun = 0;
	unsigned long flags;
	struct fcoe_wqe *sqe;
	u16 sqe_idx;

	if (!sc_cmd) {
		FUNC0(&qedf->dbg_ctx, "sc_cmd is NULL\n");
		return FAILED;
	}

	lun = (int)sc_cmd->device->lun;
	if (!FUNC16(QEDF_RPORT_SESSION_READY, &fcport->flags)) {
		FUNC0(&(qedf->dbg_ctx), "fcport not offloaded\n");
		rc = FAILED;
		goto no_flush;
	}

	io_req = FUNC6(fcport, QEDF_TASK_MGMT_CMD);
	if (!io_req) {
		FUNC0(&(qedf->dbg_ctx), "Failed TMF");
		rc = -EAGAIN;
		goto no_flush;
	}

	if (tm_flags == FCP_TMF_LUN_RESET)
		qedf->lun_resets++;
	else if (tm_flags == FCP_TMF_TGT_RESET)
		qedf->target_resets++;

	/* Initialize rest of io_req fields */
	io_req->sc_cmd = sc_cmd;
	io_req->fcport = fcport;
	io_req->cmd_type = QEDF_TASK_MGMT_CMD;

	/* Record which cpu this request is associated with */
	io_req->cpu = FUNC13();

	/* Set TM flags */
	io_req->io_req_flags = QEDF_READ;
	io_req->data_xfer_len = 0;
	io_req->tm_flags = tm_flags;

	/* Default is to return a SCSI command when an error occurs */
	io_req->return_scsi_cmd_on_abts = false;

	/* Obtain exchange id */
	xid = io_req->xid;

	FUNC1(&(qedf->dbg_ctx), QEDF_LOG_SCSI_TM, "TMF io_req xid = "
		   "0x%x\n", xid);

	/* Initialize task context for this IO request */
	task = FUNC9(&qedf->tasks, xid);

	FUNC3(&io_req->tm_done);

	FUNC14(&fcport->rport_lock, flags);

	sqe_idx = FUNC8(fcport);
	sqe = &fcport->sq[sqe_idx];
	FUNC5(sqe, 0, sizeof(struct fcoe_wqe));

	FUNC10(fcport, lport, io_req, task, sqe);
	FUNC11(fcport);

	FUNC15(&fcport->rport_lock, flags);

	FUNC12(QEDF_CMD_OUTSTANDING, &io_req->flags);
	tmo = FUNC17(&io_req->tm_done,
	    QEDF_TM_TIMEOUT * HZ);

	if (!tmo) {
		rc = FAILED;
		FUNC0(&(qedf->dbg_ctx), "wait for tm_cmpl timeout!\n");
		/* Clear outstanding bit since command timed out */
		FUNC2(QEDF_CMD_OUTSTANDING, &io_req->flags);
		io_req->sc_cmd = NULL;
	} else {
		/* Check TMF response code */
		if (io_req->fcp_rsp_code == 0)
			rc = SUCCESS;
		else
			rc = FAILED;
	}
	/*
	 * Double check that fcport has not gone into an uploading state before
	 * executing the command flush for the LUN/target.
	 */
	if (FUNC16(QEDF_RPORT_UPLOADING_CONNECTION, &fcport->flags)) {
		FUNC0(&qedf->dbg_ctx,
			 "fcport is uploading, not executing flush.\n");
		goto no_flush;
	}
	/* We do not need this io_req any more */
	FUNC4(&io_req->refcount, qedf_release_cmd);


	if (tm_flags == FCP_TMF_LUN_RESET)
		FUNC7(fcport, lun);
	else
		FUNC7(fcport, -1);

no_flush:
	if (rc != SUCCESS) {
		FUNC0(&(qedf->dbg_ctx), "task mgmt command failed...\n");
		rc = FAILED;
	} else {
		FUNC0(&(qedf->dbg_ctx), "task mgmt command success...\n");
		rc = SUCCESS;
	}
	return rc;
}