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
struct qedi_endpoint {int /*<<< orphan*/  handle; } ;
struct qedi_ctx {int /*<<< orphan*/  dbg_ctx; int /*<<< orphan*/  cdev; } ;
struct qedi_conn {int /*<<< orphan*/  iscsi_conn_id; scalar_t__ cmd_cleanup_cmpl; scalar_t__ cmd_cleanup_req; struct qedi_endpoint* ep; } ;
struct iscsi_task {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* clear_sq ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct qedi_conn*,struct qedi_endpoint*) ; 
 int /*<<< orphan*/  QEDI_LOG_INFO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct qedi_ctx*,struct qedi_conn*,struct iscsi_task*,int) ; 
 TYPE_1__* qedi_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct qedi_ctx *qedi, struct qedi_conn *qedi_conn,
		  struct iscsi_task *task)
{
	struct qedi_endpoint *qedi_ep;
	int rval;

	qedi_ep = qedi_conn->ep;
	qedi_conn->cmd_cleanup_req = 0;
	qedi_conn->cmd_cleanup_cmpl = 0;

	if (!qedi_ep) {
		FUNC2(&qedi->dbg_ctx,
			  "Cannot proceed, ep already disconnected, cid=0x%x\n",
			  qedi_conn->iscsi_conn_id);
		return;
	}

	FUNC1(&qedi->dbg_ctx, QEDI_LOG_INFO,
		  "Clearing SQ for cid=0x%x, conn=%p, ep=%p\n",
		  qedi_conn->iscsi_conn_id, qedi_conn, qedi_ep);

	qedi_ops->clear_sq(qedi->cdev, qedi_ep->handle);

	rval = FUNC4(qedi, qedi_conn, task, true);
	if (rval) {
		FUNC0(&qedi->dbg_ctx,
			 "fatal error, need hard reset, cid=0x%x\n",
			 qedi_conn->iscsi_conn_id);
		FUNC3(1);
	}
}