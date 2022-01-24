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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct qedf_rport {int /*<<< orphan*/  flags; } ;
struct qedf_ioreq {int /*<<< orphan*/  refcount; int /*<<< orphan*/  abts_done; scalar_t__ return_scsi_cmd_on_abts; int /*<<< orphan*/  xid; scalar_t__ sc_cmd; int /*<<< orphan*/  flags; int /*<<< orphan*/  event; int /*<<< orphan*/  state; int /*<<< orphan*/  rrq_work; int /*<<< orphan*/  timeout_work; int /*<<< orphan*/  cmd_type; struct qedf_rport* fcport; } ;
struct qedf_ctx {int /*<<< orphan*/  dbg_ctx; TYPE_3__* lport; int /*<<< orphan*/  dpc_wq; } ;
struct TYPE_4__ {int r_ctl; } ;
struct TYPE_5__ {TYPE_1__ abts_info; } ;
struct fcoe_cqe {TYPE_2__ cqe_info; } ;
struct TYPE_6__ {int /*<<< orphan*/  r_a_tov; } ;

/* Variables and functions */
 int /*<<< orphan*/  DID_ERROR ; 
#define  FC_RCTL_BA_ACC 129 
#define  FC_RCTL_BA_RJT 128 
 int /*<<< orphan*/  QEDFC_CMD_ST_RRQ_WAIT ; 
 int /*<<< orphan*/  QEDF_CMD_IN_ABORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  QEDF_IOREQ_EV_ABORT_FAILED ; 
 int /*<<< orphan*/  QEDF_IOREQ_EV_ABORT_SUCCESS ; 
 int /*<<< orphan*/  QEDF_LOG_IO ; 
 int /*<<< orphan*/  QEDF_LOG_SCSI_TM ; 
 int /*<<< orphan*/  QEDF_RPORT_IN_LUN_RESET ; 
 int /*<<< orphan*/  QEDF_RPORT_IN_TARGET_RESET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qedf_release_cmd ; 
 int /*<<< orphan*/  FUNC9 (struct qedf_ctx*,struct qedf_ioreq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC12(struct qedf_ctx *qedf, struct fcoe_cqe *cqe,
	struct qedf_ioreq *io_req)
{
	uint32_t r_ctl;
	uint16_t xid;
	int rc;
	struct qedf_rport *fcport = io_req->fcport;

	FUNC1(&(qedf->dbg_ctx), QEDF_LOG_SCSI_TM, "Entered with xid = "
		   "0x%x cmd_type = %d\n", io_req->xid, io_req->cmd_type);

	xid = io_req->xid;
	r_ctl = cqe->cqe_info.abts_info.r_ctl;

	/* This was added at a point when we were scheduling abts_compl &
	 * cleanup_compl on different CPUs and there was a possibility of
	 * the io_req to be freed from the other context before we got here.
	 */
	if (!fcport) {
		FUNC1(&qedf->dbg_ctx, QEDF_LOG_IO,
			  "Dropping ABTS completion xid=0x%x as fcport is NULL",
			  io_req->xid);
		return;
	}

	/*
	 * When flush is active, let the cmds be completed from the cleanup
	 * context
	 */
	if (FUNC11(QEDF_RPORT_IN_TARGET_RESET, &fcport->flags) ||
	    FUNC11(QEDF_RPORT_IN_LUN_RESET, &fcport->flags)) {
		FUNC1(&qedf->dbg_ctx, QEDF_LOG_IO,
			  "Dropping ABTS completion xid=0x%x as fcport is flushing",
			  io_req->xid);
		return;
	}

	if (!FUNC3(&io_req->timeout_work)) {
		FUNC0(&qedf->dbg_ctx,
			 "Wasn't able to cancel abts timeout work.\n");
	}

	switch (r_ctl) {
	case FC_RCTL_BA_ACC:
		FUNC1(&(qedf->dbg_ctx), QEDF_LOG_SCSI_TM,
		    "ABTS response - ACC Send RRQ after R_A_TOV\n");
		io_req->event = QEDF_IOREQ_EV_ABORT_SUCCESS;
		rc = FUNC6(&io_req->refcount);	/* ID: 003 */
		if (!rc) {
			FUNC1(&qedf->dbg_ctx, QEDF_LOG_SCSI_TM,
				  "kref is already zero so ABTS was already completed or flushed xid=0x%x.\n",
				  io_req->xid);
			return;
		}
		/*
		 * Dont release this cmd yet. It will be relesed
		 * after we get RRQ response
		 */
		FUNC10(qedf->dpc_wq, &io_req->rrq_work,
		    FUNC8(qedf->lport->r_a_tov));
		FUNC2(&io_req->state, QEDFC_CMD_ST_RRQ_WAIT);
		break;
	/* For error cases let the cleanup return the command */
	case FC_RCTL_BA_RJT:
		FUNC1(&(qedf->dbg_ctx), QEDF_LOG_SCSI_TM,
		   "ABTS response - RJT\n");
		io_req->event = QEDF_IOREQ_EV_ABORT_FAILED;
		break;
	default:
		FUNC0(&(qedf->dbg_ctx), "Unknown ABTS response\n");
		break;
	}

	FUNC4(QEDF_CMD_IN_ABORT, &io_req->flags);

	if (io_req->sc_cmd) {
		if (!io_req->return_scsi_cmd_on_abts)
			FUNC1(&qedf->dbg_ctx, QEDF_LOG_SCSI_TM,
				  "Not call scsi_done for xid=0x%x.\n",
				  io_req->xid);
		if (io_req->return_scsi_cmd_on_abts)
			FUNC9(qedf, io_req, DID_ERROR);
	}

	/* Notify eh_abort handler that ABTS is complete */
	FUNC5(&io_req->abts_done);

	FUNC7(&io_req->refcount, qedf_release_cmd);
}