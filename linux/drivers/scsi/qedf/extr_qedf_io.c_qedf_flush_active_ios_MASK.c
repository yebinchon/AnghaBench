#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct qedf_rport {int lun_reset_lun; int /*<<< orphan*/  flags; int /*<<< orphan*/  num_active_ios; TYPE_4__* rport; TYPE_3__* rdata; int /*<<< orphan*/  ios_to_queue; struct qedf_ctx* qedf; } ;
struct qedf_ioreq {int lun; int /*<<< orphan*/  cmd_type; TYPE_1__* sc_cmd; int /*<<< orphan*/  flags; int /*<<< orphan*/  xid; int /*<<< orphan*/  refcount; struct qedf_rport* fcport; int /*<<< orphan*/  abts_done; int /*<<< orphan*/  timeout_work; int /*<<< orphan*/  rrq_work; int /*<<< orphan*/  state; scalar_t__ alloc; } ;
struct qedf_ctx {int /*<<< orphan*/  flush_mutex; int /*<<< orphan*/  dbg_ctx; struct qedf_cmd_mgr* cmd_mgr; } ;
struct qedf_cmd_mgr {struct qedf_ioreq* cmds; int /*<<< orphan*/  lock; } ;
struct TYPE_8__ {int /*<<< orphan*/  scsi_target_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  port_id; } ;
struct TYPE_7__ {TYPE_2__ ids; } ;
struct TYPE_5__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int FCOE_PARAMS_NUM_TASKS ; 
 scalar_t__ QEDFC_CMD_ST_RRQ_WAIT ; 
 int /*<<< orphan*/  QEDF_ABTS ; 
 int /*<<< orphan*/  QEDF_CMD_DIRTY ; 
 int /*<<< orphan*/  QEDF_CMD_IN_ABORT ; 
 int /*<<< orphan*/  QEDF_CMD_OUTSTANDING ; 
 int /*<<< orphan*/  QEDF_ELS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  QEDF_LOG_IO ; 
 int /*<<< orphan*/  QEDF_RPORT_IN_LUN_RESET ; 
 int /*<<< orphan*/  QEDF_RPORT_IN_TARGET_RESET ; 
 int /*<<< orphan*/  QEDF_RPORT_SESSION_READY ; 
 int /*<<< orphan*/  QEDF_RPORT_UPLOADING_CONNECTION ; 
 int /*<<< orphan*/  QEDF_SCSI_CMD ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct qedf_ctx*,struct qedf_ioreq*) ; 
 int /*<<< orphan*/  FUNC14 (struct qedf_ioreq*,int) ; 
 int /*<<< orphan*/  qedf_release_cmd ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC19(struct qedf_rport *fcport, int lun)
{
	struct qedf_ioreq *io_req;
	struct qedf_ctx *qedf;
	struct qedf_cmd_mgr *cmd_mgr;
	int i, rc;
	unsigned long flags;
	int flush_cnt = 0;
	int wait_cnt = 100;
	int refcount = 0;

	if (!fcport) {
		FUNC0(NULL, "fcport is NULL\n");
		return;
	}

	/* Check that fcport is still offloaded */
	if (!FUNC18(QEDF_RPORT_SESSION_READY, &fcport->flags)) {
		FUNC0(NULL, "fcport is no longer offloaded.\n");
		return;
	}

	qedf = fcport->qedf;

	if (!qedf) {
		FUNC0(NULL, "qedf is NULL.\n");
		return;
	}

	/* Only wait for all commands to be queued in the Upload context */
	if (FUNC18(QEDF_RPORT_UPLOADING_CONNECTION, &fcport->flags) &&
	    (lun == -1)) {
		while (FUNC3(&fcport->ios_to_queue)) {
			FUNC1(&qedf->dbg_ctx, QEDF_LOG_IO,
				  "Waiting for %d I/Os to be queued\n",
				  FUNC3(&fcport->ios_to_queue));
			if (wait_cnt == 0) {
				FUNC0(NULL,
					 "%d IOs request could not be queued\n",
					 FUNC3(&fcport->ios_to_queue));
			}
			FUNC10(20);
			wait_cnt--;
		}
	}

	cmd_mgr = qedf->cmd_mgr;

	FUNC1(&qedf->dbg_ctx, QEDF_LOG_IO,
		  "Flush active i/o's num=0x%x fcport=0x%p port_id=0x%06x scsi_id=%d.\n",
		  FUNC3(&fcport->num_active_ios), fcport,
		  fcport->rdata->ids.port_id, fcport->rport->scsi_target_id);
	FUNC1(&qedf->dbg_ctx, QEDF_LOG_IO, "Locking flush mutex.\n");

	FUNC11(&qedf->flush_mutex);
	if (lun == -1) {
		FUNC15(QEDF_RPORT_IN_TARGET_RESET, &fcport->flags);
	} else {
		FUNC15(QEDF_RPORT_IN_LUN_RESET, &fcport->flags);
		fcport->lun_reset_lun = lun;
	}

	for (i = 0; i < FCOE_PARAMS_NUM_TASKS; i++) {
		io_req = &cmd_mgr->cmds[i];

		if (!io_req)
			continue;
		if (!io_req->fcport)
			continue;

		FUNC16(&cmd_mgr->lock, flags);

		if (io_req->alloc) {
			if (!FUNC18(QEDF_CMD_OUTSTANDING, &io_req->flags)) {
				if (io_req->cmd_type == QEDF_SCSI_CMD)
					FUNC0(&qedf->dbg_ctx,
						 "Allocated but not queued, xid=0x%x\n",
						 io_req->xid);
			}
			FUNC17(&cmd_mgr->lock, flags);
		} else {
			FUNC17(&cmd_mgr->lock, flags);
			continue;
		}

		if (io_req->fcport != fcport)
			continue;

		/* In case of ABTS, CMD_OUTSTANDING is cleared on ABTS response,
		 * but RRQ is still pending.
		 * Workaround: Within qedf_send_rrq, we check if the fcport is
		 * NULL, and we drop the ref on the io_req to clean it up.
		 */
		if (!FUNC18(QEDF_CMD_OUTSTANDING, &io_req->flags)) {
			refcount = FUNC9(&io_req->refcount);
			FUNC1(&qedf->dbg_ctx, QEDF_LOG_IO,
				  "Not outstanding, xid=0x%x, cmd_type=%d refcount=%d.\n",
				  io_req->xid, io_req->cmd_type, refcount);
			/* If RRQ work has been queue, try to cancel it and
			 * free the io_req
			 */
			if (FUNC3(&io_req->state) ==
			    QEDFC_CMD_ST_RRQ_WAIT) {
				if (FUNC4
				    (&io_req->rrq_work)) {
					FUNC1(&qedf->dbg_ctx, QEDF_LOG_IO,
						  "Putting reference for pending RRQ work xid=0x%x.\n",
						  io_req->xid);
					/* ID: 003 */
					FUNC8(&io_req->refcount,
						 qedf_release_cmd);
				}
			}
			continue;
		}

		/* Only consider flushing ELS during target reset */
		if (io_req->cmd_type == QEDF_ELS &&
		    lun == -1) {
			rc = FUNC7(&io_req->refcount);
			if (!rc) {
				FUNC0(&(qedf->dbg_ctx),
				    "Could not get kref for ELS io_req=0x%p xid=0x%x.\n",
				    io_req, io_req->xid);
				continue;
			}
			flush_cnt++;
			FUNC13(qedf, io_req);
			/*
			 * Release the kref and go back to the top of the
			 * loop.
			 */
			goto free_cmd;
		}

		if (io_req->cmd_type == QEDF_ABTS) {
			/* ID: 004 */
			rc = FUNC7(&io_req->refcount);
			if (!rc) {
				FUNC0(&(qedf->dbg_ctx),
				    "Could not get kref for abort io_req=0x%p xid=0x%x.\n",
				    io_req, io_req->xid);
				continue;
			}
			if (lun != -1 && io_req->lun != lun)
				goto free_cmd;

			FUNC1(&qedf->dbg_ctx, QEDF_LOG_IO,
			    "Flushing abort xid=0x%x.\n", io_req->xid);

			if (FUNC4(&io_req->rrq_work)) {
				FUNC1(&qedf->dbg_ctx, QEDF_LOG_IO,
					  "Putting ref for cancelled RRQ work xid=0x%x.\n",
					  io_req->xid);
				FUNC8(&io_req->refcount, qedf_release_cmd);
			}

			if (FUNC4(&io_req->timeout_work)) {
				FUNC1(&qedf->dbg_ctx, QEDF_LOG_IO,
					  "Putting ref for cancelled tmo work xid=0x%x.\n",
					  io_req->xid);
				FUNC14(io_req, true);
				/* Notify eh_abort handler that ABTS is
				 * complete
				 */
				FUNC6(&io_req->abts_done);
				FUNC5(QEDF_CMD_IN_ABORT, &io_req->flags);
				/* ID: 002 */
				FUNC8(&io_req->refcount, qedf_release_cmd);
			}
			flush_cnt++;
			goto free_cmd;
		}

		if (!io_req->sc_cmd)
			continue;
		if (!io_req->sc_cmd->device) {
			FUNC1(&qedf->dbg_ctx, QEDF_LOG_IO,
				  "Device backpointer NULL for sc_cmd=%p.\n",
				  io_req->sc_cmd);
			/* Put reference for non-existent scsi_cmnd */
			io_req->sc_cmd = NULL;
			FUNC14(io_req, false);
			FUNC8(&io_req->refcount, qedf_release_cmd);
			continue;
		}
		if (lun > -1) {
			if (io_req->lun != lun)
				continue;
		}

		/*
		 * Use kref_get_unless_zero in the unlikely case the command
		 * we're about to flush was completed in the normal SCSI path
		 */
		rc = FUNC7(&io_req->refcount);
		if (!rc) {
			FUNC0(&(qedf->dbg_ctx), "Could not get kref for "
			    "io_req=0x%p xid=0x%x\n", io_req, io_req->xid);
			continue;
		}

		FUNC1(&(qedf->dbg_ctx), QEDF_LOG_IO,
		    "Cleanup xid=0x%x.\n", io_req->xid);
		flush_cnt++;

		/* Cleanup task and return I/O mid-layer */
		FUNC14(io_req, true);

free_cmd:
		FUNC8(&io_req->refcount, qedf_release_cmd);	/* ID: 004 */
	}

	wait_cnt = 60;
	FUNC1(&qedf->dbg_ctx, QEDF_LOG_IO,
		  "Flushed 0x%x I/Os, active=0x%x.\n",
		  flush_cnt, FUNC3(&fcport->num_active_ios));
	/* Only wait for all commands to complete in the Upload context */
	if (FUNC18(QEDF_RPORT_UPLOADING_CONNECTION, &fcport->flags) &&
	    (lun == -1)) {
		while (FUNC3(&fcport->num_active_ios)) {
			FUNC1(&qedf->dbg_ctx, QEDF_LOG_IO,
				  "Flushed 0x%x I/Os, active=0x%x cnt=%d.\n",
				  flush_cnt,
				  FUNC3(&fcport->num_active_ios),
				  wait_cnt);
			if (wait_cnt == 0) {
				FUNC0(&qedf->dbg_ctx,
					 "Flushed %d I/Os, active=%d.\n",
					 flush_cnt,
					 FUNC3(&fcport->num_active_ios));
				for (i = 0; i < FCOE_PARAMS_NUM_TASKS; i++) {
					io_req = &cmd_mgr->cmds[i];
					if (io_req->fcport &&
					    io_req->fcport == fcport) {
						refcount =
						FUNC9(&io_req->refcount);
						FUNC15(QEDF_CMD_DIRTY,
							&io_req->flags);
						FUNC0(&qedf->dbg_ctx,
							 "Outstanding io_req =%p xid=0x%x flags=0x%lx, sc_cmd=%p refcount=%d cmd_type=%d.\n",
							 io_req, io_req->xid,
							 io_req->flags,
							 io_req->sc_cmd,
							 refcount,
							 io_req->cmd_type);
					}
				}
				FUNC2(1);
				break;
			}
			FUNC10(500);
			wait_cnt--;
		}
	}

	FUNC5(QEDF_RPORT_IN_LUN_RESET, &fcport->flags);
	FUNC5(QEDF_RPORT_IN_TARGET_RESET, &fcport->flags);
	FUNC1(&qedf->dbg_ctx, QEDF_LOG_IO, "Unlocking flush mutex.\n");
	FUNC12(&qedf->flush_mutex);
}