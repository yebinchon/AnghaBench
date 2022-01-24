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
struct qedf_rport {int /*<<< orphan*/  rport_lock; TYPE_1__* qedf; int /*<<< orphan*/  free_sqes; } ;
struct qedf_ioreq {int /*<<< orphan*/  xid; int /*<<< orphan*/  refcount; int /*<<< orphan*/ * sc_cmd; struct qedf_rport* fcport; } ;
struct TYPE_2__ {int /*<<< orphan*/  dbg_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QEDF_LOG_ELS ; 
 int /*<<< orphan*/  QEDF_SCSI_CMD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct qedf_ioreq* FUNC4 (struct qedf_rport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qedf_ioreq*,int) ; 
 scalar_t__ FUNC6 (struct qedf_rport*,struct qedf_ioreq*) ; 
 int /*<<< orphan*/  qedf_release_cmd ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC9(struct qedf_ioreq *orig_io_req)
{
	struct qedf_rport *fcport;
	struct qedf_ioreq *new_io_req;
	unsigned long flags;
	bool rc = false;

	fcport = orig_io_req->fcport;
	if (!fcport) {
		FUNC0(NULL, "fcport is NULL.\n");
		goto out;
	}

	if (!orig_io_req->sc_cmd) {
		FUNC0(&(fcport->qedf->dbg_ctx), "sc_cmd is NULL for "
		    "xid=0x%x.\n", orig_io_req->xid);
		goto out;
	}

	new_io_req = FUNC4(fcport, QEDF_SCSI_CMD);
	if (!new_io_req) {
		FUNC0(&(fcport->qedf->dbg_ctx), "Could not allocate new "
		    "io_req.\n");
		goto out;
	}

	new_io_req->sc_cmd = orig_io_req->sc_cmd;

	/*
	 * This keeps the sc_cmd struct from being returned to the tape
	 * driver and being requeued twice. We do need to put a reference
	 * for the original I/O request since we will not do a SCSI completion
	 * for it.
	 */
	orig_io_req->sc_cmd = NULL;
	FUNC3(&orig_io_req->refcount, qedf_release_cmd);

	FUNC7(&fcport->rport_lock, flags);

	/* kref for new command released in qedf_post_io_req on error */
	if (FUNC6(fcport, new_io_req)) {
		FUNC0(&(fcport->qedf->dbg_ctx), "Unable to post io_req\n");
		/* Return SQE to pool */
		FUNC2(&fcport->free_sqes);
	} else {
		FUNC1(&(fcport->qedf->dbg_ctx), QEDF_LOG_ELS,
		    "Reissued SCSI command from  orig_xid=0x%x on "
		    "new_xid=0x%x.\n", orig_io_req->xid, new_io_req->xid);
		/*
		 * Abort the original I/O but do not return SCSI command as
		 * it has been reissued on another OX_ID.
		 */
		FUNC8(&fcport->rport_lock, flags);
		FUNC5(orig_io_req, false);
		goto out;
	}

	FUNC8(&fcport->rport_lock, flags);
out:
	return rc;
}