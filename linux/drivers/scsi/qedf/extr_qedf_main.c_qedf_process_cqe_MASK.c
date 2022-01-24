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
typedef  int u32 ;
typedef  size_t u16 ;
struct qedf_rport {int /*<<< orphan*/  free_sqes; int /*<<< orphan*/  flags; } ;
struct qedf_ioreq {int /*<<< orphan*/  cmd_type; struct qedf_rport* fcport; } ;
struct qedf_ctx {int /*<<< orphan*/  dbg_ctx; TYPE_1__* cmd_mgr; } ;
struct fcoe_cqe {int cqe_data; } ;
struct TYPE_2__ {struct qedf_ioreq* cmds; } ;

/* Variables and functions */
#define  FCOE_ABTS_CQE_TYPE 139 
 int FCOE_CQE_CQE_TYPE_MASK ; 
 int FCOE_CQE_CQE_TYPE_SHIFT ; 
 size_t FCOE_CQE_TASK_ID_MASK ; 
#define  FCOE_DUMMY_CQE_TYPE 138 
#define  FCOE_ERROR_DETECTION_CQE_TYPE 137 
#define  FCOE_EXCH_CLEANUP_CQE_TYPE 136 
#define  FCOE_GOOD_COMPLETION_CQE_TYPE 135 
#define  FCOE_LOCAL_COMP_CQE_TYPE 134 
#define  FCOE_WARNING_CQE_TYPE 133 
#define  MAX_FCOE_CQE_TYPE 132 
#define  QEDF_ELS 131 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  QEDF_LOG_IO ; 
 int /*<<< orphan*/  QEDF_RPORT_SESSION_READY ; 
#define  QEDF_SCSI_CMD 130 
#define  QEDF_SEQ_CLEANUP 129 
#define  QEDF_TASK_MGMT_CMD 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct qedf_ctx*,struct fcoe_cqe*,struct qedf_ioreq*) ; 
 int /*<<< orphan*/  FUNC4 (struct qedf_ctx*,struct fcoe_cqe*,struct qedf_ioreq*) ; 
 int /*<<< orphan*/  FUNC5 (struct qedf_ctx*,struct fcoe_cqe*,struct qedf_ioreq*) ; 
 int /*<<< orphan*/  FUNC6 (struct qedf_ctx*,struct fcoe_cqe*,struct qedf_ioreq*) ; 
 int /*<<< orphan*/  FUNC7 (struct qedf_ctx*,struct fcoe_cqe*,struct qedf_ioreq*) ; 
 int /*<<< orphan*/  FUNC8 (struct qedf_ctx*,struct fcoe_cqe*,struct qedf_ioreq*) ; 
 int /*<<< orphan*/  FUNC9 (struct qedf_ctx*,struct fcoe_cqe*,struct qedf_ioreq*) ; 
 int /*<<< orphan*/  FUNC10 (struct qedf_ctx*,struct fcoe_cqe*,struct qedf_ioreq*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC12(struct qedf_ctx *qedf, struct fcoe_cqe *cqe)
{
	u16 xid;
	struct qedf_ioreq *io_req;
	struct qedf_rport *fcport;
	u32 comp_type;

	comp_type = (cqe->cqe_data >> FCOE_CQE_CQE_TYPE_SHIFT) &
	    FCOE_CQE_CQE_TYPE_MASK;

	xid = cqe->cqe_data & FCOE_CQE_TASK_ID_MASK;
	io_req = &qedf->cmd_mgr->cmds[xid];

	/* Completion not for a valid I/O anymore so just return */
	if (!io_req) {
		FUNC0(&qedf->dbg_ctx,
			 "io_req is NULL for xid=0x%x.\n", xid);
		return;
	}

	fcport = io_req->fcport;

	if (fcport == NULL) {
		FUNC0(&qedf->dbg_ctx,
			 "fcport is NULL for xid=0x%x io_req=%p.\n",
			 xid, io_req);
		return;
	}

	/*
	 * Check that fcport is offloaded.  If it isn't then the spinlock
	 * isn't valid and shouldn't be taken. We should just return.
	 */
	if (!FUNC11(QEDF_RPORT_SESSION_READY, &fcport->flags)) {
		FUNC0(&qedf->dbg_ctx,
			 "Session not offloaded yet, fcport = %p.\n", fcport);
		return;
	}


	switch (comp_type) {
	case FCOE_GOOD_COMPLETION_CQE_TYPE:
		FUNC2(&fcport->free_sqes);
		switch (io_req->cmd_type) {
		case QEDF_SCSI_CMD:
			FUNC10(qedf, cqe, io_req);
			break;
		case QEDF_ELS:
			FUNC5(qedf, cqe, io_req);
			break;
		case QEDF_TASK_MGMT_CMD:
			FUNC8(qedf, cqe, io_req);
			break;
		case QEDF_SEQ_CLEANUP:
			FUNC7(qedf, cqe, io_req);
			break;
		}
		break;
	case FCOE_ERROR_DETECTION_CQE_TYPE:
		FUNC2(&fcport->free_sqes);
		FUNC1(&(qedf->dbg_ctx), QEDF_LOG_IO,
		    "Error detect CQE.\n");
		FUNC6(qedf, cqe, io_req);
		break;
	case FCOE_EXCH_CLEANUP_CQE_TYPE:
		FUNC2(&fcport->free_sqes);
		FUNC1(&(qedf->dbg_ctx), QEDF_LOG_IO,
		    "Cleanup CQE.\n");
		FUNC4(qedf, cqe, io_req);
		break;
	case FCOE_ABTS_CQE_TYPE:
		FUNC2(&fcport->free_sqes);
		FUNC1(&(qedf->dbg_ctx), QEDF_LOG_IO,
		    "Abort CQE.\n");
		FUNC3(qedf, cqe, io_req);
		break;
	case FCOE_DUMMY_CQE_TYPE:
		FUNC2(&fcport->free_sqes);
		FUNC1(&(qedf->dbg_ctx), QEDF_LOG_IO,
		    "Dummy CQE.\n");
		break;
	case FCOE_LOCAL_COMP_CQE_TYPE:
		FUNC2(&fcport->free_sqes);
		FUNC1(&(qedf->dbg_ctx), QEDF_LOG_IO,
		    "Local completion CQE.\n");
		break;
	case FCOE_WARNING_CQE_TYPE:
		FUNC2(&fcport->free_sqes);
		FUNC1(&(qedf->dbg_ctx), QEDF_LOG_IO,
		    "Warning CQE.\n");
		FUNC9(qedf, cqe, io_req);
		break;
	case MAX_FCOE_CQE_TYPE:
		FUNC2(&fcport->free_sqes);
		FUNC1(&(qedf->dbg_ctx), QEDF_LOG_IO,
		    "Max FCoE CQE.\n");
		break;
	default:
		FUNC1(&(qedf->dbg_ctx), QEDF_LOG_IO,
		    "Default CQE.\n");
		break;
	}
}