#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct qedf_ioreq {int /*<<< orphan*/  refcount; int /*<<< orphan*/ * cb_arg; int /*<<< orphan*/  (* cb_func ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  timeout_work; int /*<<< orphan*/  event; int /*<<< orphan*/  xid; } ;
struct qedf_ctx {int /*<<< orphan*/  dbg_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QEDF_IOREQ_EV_ELS_FLUSH ; 
 int /*<<< orphan*/  QEDF_LOG_IO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qedf_release_cmd ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct qedf_ctx *qedf,
	struct qedf_ioreq *els_req)
{
	FUNC0(&(qedf->dbg_ctx), QEDF_LOG_IO,
	    "Flushing ELS request xid=0x%x refcount=%d.\n", els_req->xid,
	    FUNC3(&els_req->refcount));

	/*
	 * Need to distinguish this from a timeout when calling the
	 * els_req->cb_func.
	 */
	els_req->event = QEDF_IOREQ_EV_ELS_FLUSH;

	/* Cancel the timer */
	FUNC1(&els_req->timeout_work);

	/* Call callback function to complete command */
	if (els_req->cb_func && els_req->cb_arg) {
		els_req->cb_func(els_req->cb_arg);
		els_req->cb_arg = NULL;
	}

	/* Release kref for original initiate_els */
	FUNC2(&els_req->refcount, qedf_release_cmd);
}