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
typedef  size_t u16 ;
struct TYPE_3__ {char* ptr; } ;
struct scsi_cmnd {scalar_t__ sc_data_direction; TYPE_2__* device; TYPE_1__ SCp; } ;
struct qedf_rport {struct fcoe_wqe* sq; int /*<<< orphan*/  flags; } ;
struct qedf_ioreq {size_t xid; int lun; struct scsi_cmnd* sc_cmd; int /*<<< orphan*/  flags; int /*<<< orphan*/  refcount; scalar_t__ io_req_flags; int /*<<< orphan*/  cpu; int /*<<< orphan*/  sge_type; int /*<<< orphan*/  data_xfer_len; } ;
struct qedf_ctx {int /*<<< orphan*/  dbg_ctx; int /*<<< orphan*/  tasks; int /*<<< orphan*/  control_requests; int /*<<< orphan*/  output_requests; int /*<<< orphan*/  input_requests; } ;
struct fcoe_wqe {int dummy; } ;
struct fc_lport {int dummy; } ;
struct e4_fcoe_task_context {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef  enum fcoe_task_type { ____Placeholder_fcoe_task_type } fcoe_task_type ;
struct TYPE_4__ {scalar_t__ lun; struct Scsi_Host* host; } ;

/* Variables and functions */
 scalar_t__ DMA_FROM_DEVICE ; 
 scalar_t__ DMA_TO_DEVICE ; 
 int EAGAIN ; 
 int EINVAL ; 
 int FCOE_TASK_TYPE_READ_INITIATOR ; 
 int FCOE_TASK_TYPE_WRITE_INITIATOR ; 
 int /*<<< orphan*/  QEDF_CMD_OUTSTANDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  QEDF_IOREQ_FAST_SGE ; 
 int /*<<< orphan*/  QEDF_IO_TRACE_REQ ; 
 scalar_t__ QEDF_READ ; 
 int /*<<< orphan*/  QEDF_RPORT_SESSION_READY ; 
 int /*<<< orphan*/  QEDF_RPORT_UPLOADING_CONNECTION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 scalar_t__ QEDF_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct qedf_ctx* FUNC3 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC4 (struct fcoe_wqe*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct qedf_ioreq*) ; 
 size_t FUNC6 (struct qedf_rport*) ; 
 struct e4_fcoe_task_context* FUNC7 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct qedf_rport*,struct fc_lport*,struct qedf_ioreq*,struct e4_fcoe_task_context*,struct fcoe_wqe*) ; 
 scalar_t__ qedf_io_tracing ; 
 int /*<<< orphan*/  qedf_release_cmd ; 
 int /*<<< orphan*/  FUNC9 (struct qedf_rport*) ; 
 int /*<<< orphan*/  FUNC10 (struct qedf_rport*,struct qedf_ioreq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct fc_lport* FUNC13 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC16(struct qedf_rport *fcport, struct qedf_ioreq *io_req)
{
	struct scsi_cmnd *sc_cmd = io_req->sc_cmd;
	struct Scsi_Host *host = sc_cmd->device->host;
	struct fc_lport *lport = FUNC13(host);
	struct qedf_ctx *qedf = FUNC3(lport);
	struct e4_fcoe_task_context *task_ctx;
	u16 xid;
	enum fcoe_task_type req_type = 0;
	struct fcoe_wqe *sqe;
	u16 sqe_idx;

	/* Initialize rest of io_req fileds */
	io_req->data_xfer_len = FUNC11(sc_cmd);
	sc_cmd->SCp.ptr = (char *)io_req;
	io_req->sge_type = QEDF_IOREQ_FAST_SGE; /* Assume fast SGL by default */

	/* Record which cpu this request is associated with */
	io_req->cpu = FUNC14();

	if (sc_cmd->sc_data_direction == DMA_FROM_DEVICE) {
		req_type = FCOE_TASK_TYPE_READ_INITIATOR;
		io_req->io_req_flags = QEDF_READ;
		qedf->input_requests++;
	} else if (sc_cmd->sc_data_direction == DMA_TO_DEVICE) {
		req_type = FCOE_TASK_TYPE_WRITE_INITIATOR;
		io_req->io_req_flags = QEDF_WRITE;
		qedf->output_requests++;
	} else {
		io_req->io_req_flags = 0;
		qedf->control_requests++;
	}

	xid = io_req->xid;

	/* Build buffer descriptor list for firmware from sg list */
	if (FUNC5(io_req)) {
		FUNC0(&(qedf->dbg_ctx), "BD list creation failed.\n");
		/* Release cmd will release io_req, but sc_cmd is assigned */
		io_req->sc_cmd = NULL;
		FUNC2(&io_req->refcount, qedf_release_cmd);
		return -EAGAIN;
	}

	if (!FUNC15(QEDF_RPORT_SESSION_READY, &fcport->flags) ||
	    FUNC15(QEDF_RPORT_UPLOADING_CONNECTION, &fcport->flags)) {
		FUNC0(&(qedf->dbg_ctx), "Session not offloaded yet.\n");
		/* Release cmd will release io_req, but sc_cmd is assigned */
		io_req->sc_cmd = NULL;
		FUNC2(&io_req->refcount, qedf_release_cmd);
		return -EINVAL;
	}

	/* Record LUN number for later use if we neeed them */
	io_req->lun = (int)sc_cmd->device->lun;

	/* Obtain free SQE */
	sqe_idx = FUNC6(fcport);
	sqe = &fcport->sq[sqe_idx];
	FUNC4(sqe, 0, sizeof(struct fcoe_wqe));

	/* Get the task context */
	task_ctx = FUNC7(&qedf->tasks, xid);
	if (!task_ctx) {
		FUNC1(&(qedf->dbg_ctx), "task_ctx is NULL, xid=%d.\n",
			   xid);
		/* Release cmd will release io_req, but sc_cmd is assigned */
		io_req->sc_cmd = NULL;
		FUNC2(&io_req->refcount, qedf_release_cmd);
		return -EINVAL;
	}

	FUNC8(fcport, lport, io_req, task_ctx, sqe);

	/* Ring doorbell */
	FUNC9(fcport);

	/* Set that command is with the firmware now */
	FUNC12(QEDF_CMD_OUTSTANDING, &io_req->flags);

	if (qedf_io_tracing && io_req->sc_cmd)
		FUNC10(fcport, io_req, QEDF_IO_TRACE_REQ);

	return false;
}