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
struct qedf_ioreq {scalar_t__ event; int /*<<< orphan*/  refcount; int /*<<< orphan*/  xid; int /*<<< orphan*/  timeout_work; TYPE_1__* fcport; } ;
struct qedf_els_cb_arg {struct qedf_ioreq* aborted_io_req; struct qedf_ioreq* io_req; } ;
struct qedf_ctx {int /*<<< orphan*/  dbg_ctx; } ;
struct TYPE_2__ {struct qedf_ctx* qedf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct qedf_ioreq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ QEDF_IOREQ_EV_ELS_ERR_DETECT ; 
 scalar_t__ QEDF_IOREQ_EV_ELS_TMO ; 
 int /*<<< orphan*/  QEDF_LOG_ELS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct qedf_els_cb_arg*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qedf_release_cmd ; 

__attribute__((used)) static void FUNC6(struct qedf_els_cb_arg *cb_arg)
{
	struct qedf_ioreq *orig_io_req;
	struct qedf_ioreq *rrq_req;
	struct qedf_ctx *qedf;
	int refcount;

	rrq_req = cb_arg->io_req;
	qedf = rrq_req->fcport->qedf;

	FUNC1(&(qedf->dbg_ctx), QEDF_LOG_ELS, "Entered.\n");

	orig_io_req = cb_arg->aborted_io_req;

	if (!orig_io_req) {
		FUNC0(&qedf->dbg_ctx,
			 "Original io_req is NULL, rrq_req = %p.\n", rrq_req);
		goto out_free;
	}

	if (rrq_req->event != QEDF_IOREQ_EV_ELS_TMO &&
	    rrq_req->event != QEDF_IOREQ_EV_ELS_ERR_DETECT)
		FUNC2(&orig_io_req->timeout_work);

	refcount = FUNC5(&orig_io_req->refcount);
	FUNC1(&(qedf->dbg_ctx), QEDF_LOG_ELS, "rrq_compl: orig io = %p,"
		   " orig xid = 0x%x, rrq_xid = 0x%x, refcount=%d\n",
		   orig_io_req, orig_io_req->xid, rrq_req->xid, refcount);

	/*
	 * This should return the aborted io_req to the command pool. Note that
	 * we need to check the refcound in case the original request was
	 * flushed but we get a completion on this xid.
	 */
	if (orig_io_req && refcount > 0)
		FUNC4(&orig_io_req->refcount, qedf_release_cmd);

out_free:
	/*
	 * Release a reference to the rrq request if we timed out as the
	 * rrq completion handler is called directly from the timeout handler
	 * and not from els_compl where the reference would have normally been
	 * released.
	 */
	if (rrq_req->event == QEDF_IOREQ_EV_ELS_TMO)
		FUNC4(&rrq_req->refcount, qedf_release_cmd);
	FUNC3(cb_arg);
}