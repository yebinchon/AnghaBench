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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u16 ;
struct qedf_rport {int /*<<< orphan*/  free_sqes; int /*<<< orphan*/  num_active_ios; struct qedf_ctx* qedf; } ;
struct qedf_ioreq {int alloc; size_t xid; int lun; int rx_id; scalar_t__ tx_buf_off; scalar_t__ rx_buf_off; scalar_t__ tm_flags; int /*<<< orphan*/  cmd_type; int /*<<< orphan*/  refcount; struct io_bdt* bd_tbl; int /*<<< orphan*/  state; int /*<<< orphan*/ * sc_cmd; struct qedf_rport* fcport; struct qedf_cmd_mgr* cmd_mgr; int /*<<< orphan*/  flags; } ;
struct qedf_ctx {int /*<<< orphan*/  alloc_failures; int /*<<< orphan*/  dbg_ctx; struct qedf_cmd_mgr* cmd_mgr; } ;
struct qedf_cmd_mgr {size_t idx; struct io_bdt** io_bdt_pool; int /*<<< orphan*/  free_list_cnt; int /*<<< orphan*/  lock; struct qedf_ioreq* cmds; } ;
struct io_bdt {struct qedf_ioreq* io_req; } ;

/* Variables and functions */
 int FCOE_PARAMS_NUM_TASKS ; 
 scalar_t__ GBL_RSVD_TASKS ; 
 scalar_t__ NUM_RW_TASKS_PER_CONNECTION ; 
 int /*<<< orphan*/  QEDFC_CMD_ST_IO_ACTIVE ; 
 int /*<<< orphan*/  QEDF_CMD_DIRTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  QEDF_LOG_IO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qedf_release_cmd ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct qedf_ioreq *FUNC11(struct qedf_rport *fcport, u8 cmd_type)
{
	struct qedf_ctx *qedf = fcport->qedf;
	struct qedf_cmd_mgr *cmd_mgr = qedf->cmd_mgr;
	struct qedf_ioreq *io_req = NULL;
	struct io_bdt *bd_tbl;
	u16 xid;
	uint32_t free_sqes;
	int i;
	unsigned long flags;

	free_sqes = FUNC4(&fcport->free_sqes);

	if (!free_sqes) {
		FUNC1(&(qedf->dbg_ctx), QEDF_LOG_IO,
		    "Returning NULL, free_sqes=%d.\n ",
		    free_sqes);
		goto out_failed;
	}

	/* Limit the number of outstanding R/W tasks */
	if ((FUNC4(&fcport->num_active_ios) >=
	    NUM_RW_TASKS_PER_CONNECTION)) {
		FUNC1(&(qedf->dbg_ctx), QEDF_LOG_IO,
		    "Returning NULL, num_active_ios=%d.\n",
		    FUNC4(&fcport->num_active_ios));
		goto out_failed;
	}

	/* Limit global TIDs certain tasks */
	if (FUNC4(&cmd_mgr->free_list_cnt) <= GBL_RSVD_TASKS) {
		FUNC1(&(qedf->dbg_ctx), QEDF_LOG_IO,
		    "Returning NULL, free_list_cnt=%d.\n",
		    FUNC4(&cmd_mgr->free_list_cnt));
		goto out_failed;
	}

	FUNC8(&cmd_mgr->lock, flags);
	for (i = 0; i < FCOE_PARAMS_NUM_TASKS; i++) {
		io_req = &cmd_mgr->cmds[cmd_mgr->idx];
		cmd_mgr->idx++;
		if (cmd_mgr->idx == FCOE_PARAMS_NUM_TASKS)
			cmd_mgr->idx = 0;

		/* Check to make sure command was previously freed */
		if (!io_req->alloc)
			break;
	}

	if (i == FCOE_PARAMS_NUM_TASKS) {
		FUNC9(&cmd_mgr->lock, flags);
		goto out_failed;
	}

	if (FUNC10(QEDF_CMD_DIRTY, &io_req->flags))
		FUNC0(&qedf->dbg_ctx,
			 "io_req found to be dirty ox_id = 0x%x.\n",
			 io_req->xid);

	/* Clear any flags now that we've reallocated the xid */
	io_req->flags = 0;
	io_req->alloc = 1;
	FUNC9(&cmd_mgr->lock, flags);

	FUNC3(&fcport->num_active_ios);
	FUNC2(&fcport->free_sqes);
	xid = io_req->xid;
	FUNC2(&cmd_mgr->free_list_cnt);

	io_req->cmd_mgr = cmd_mgr;
	io_req->fcport = fcport;

	/* Clear any stale sc_cmd back pointer */
	io_req->sc_cmd = NULL;
	io_req->lun = -1;

	/* Hold the io_req against deletion */
	FUNC6(&io_req->refcount);	/* ID: 001 */
	FUNC5(&io_req->state, QEDFC_CMD_ST_IO_ACTIVE);

	/* Bind io_bdt for this io_req */
	/* Have a static link between io_req and io_bdt_pool */
	bd_tbl = io_req->bd_tbl = cmd_mgr->io_bdt_pool[xid];
	if (bd_tbl == NULL) {
		FUNC0(&(qedf->dbg_ctx), "bd_tbl is NULL, xid=%x.\n", xid);
		FUNC7(&io_req->refcount, qedf_release_cmd);
		goto out_failed;
	}
	bd_tbl->io_req = io_req;
	io_req->cmd_type = cmd_type;
	io_req->tm_flags = 0;

	/* Reset sequence offset data */
	io_req->rx_buf_off = 0;
	io_req->tx_buf_off = 0;
	io_req->rx_id = 0xffff; /* No OX_ID */

	return io_req;

out_failed:
	/* Record failure for stats and return NULL to caller */
	qedf->alloc_failures++;
	return NULL;
}