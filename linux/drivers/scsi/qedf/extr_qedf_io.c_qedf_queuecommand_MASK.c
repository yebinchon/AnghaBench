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
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;int /*<<< orphan*/  device; } ;
struct qedf_rport {int /*<<< orphan*/  ios_to_queue; int /*<<< orphan*/  rport_lock; int /*<<< orphan*/  free_sqes; scalar_t__ retry_delay_timestamp; int /*<<< orphan*/  flags; } ;
struct qedf_ioreq {struct scsi_cmnd* sc_cmd; } ;
struct qedf_ctx {int /*<<< orphan*/  dbg_ctx; int /*<<< orphan*/  link_state; int /*<<< orphan*/  flags; TYPE_1__* pdev; } ;
struct fc_rport_libfc_priv {int dummy; } ;
struct fc_rport {int /*<<< orphan*/  port_id; struct fc_rport_libfc_priv* dd_data; } ;
struct fc_lport {scalar_t__ state; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  msix_enabled; } ;

/* Variables and functions */
 int DID_ERROR ; 
 int DID_NO_CONNECT ; 
 scalar_t__ LPORT_ST_READY ; 
 int /*<<< orphan*/  QEDF_DBG_STOP_IO ; 
 int /*<<< orphan*/  QEDF_DRAIN_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ QEDF_LINK_UP ; 
 int /*<<< orphan*/  QEDF_LOG_IO ; 
 int QEDF_MAX_BDS_PER_CMD ; 
 int /*<<< orphan*/  QEDF_RPORT_SESSION_READY ; 
 int /*<<< orphan*/  QEDF_RPORT_UPLOADING_CONNECTION ; 
 int /*<<< orphan*/  QEDF_SCSI_CMD ; 
 int /*<<< orphan*/  QEDF_UNLOADING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int SCSI_MLQUEUE_HOST_BUSY ; 
 int SCSI_MLQUEUE_TARGET_BUSY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct fc_rport*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct qedf_ctx* FUNC7 (struct fc_lport*) ; 
 struct qedf_ioreq* FUNC8 (struct qedf_rport*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct qedf_rport*,struct qedf_ioreq*) ; 
 int FUNC10 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct fc_lport* FUNC12 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 struct fc_rport* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC17 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC18 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC19 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,scalar_t__) ; 

int
FUNC22(struct Scsi_Host *host, struct scsi_cmnd *sc_cmd)
{
	struct fc_lport *lport = FUNC12(host);
	struct qedf_ctx *qedf = FUNC7(lport);
	struct fc_rport *rport = FUNC15(FUNC11(sc_cmd->device));
	struct fc_rport_libfc_priv *rp = rport->dd_data;
	struct qedf_rport *fcport;
	struct qedf_ioreq *io_req;
	int rc = 0;
	int rval;
	unsigned long flags = 0;
	int num_sgs = 0;

	num_sgs = FUNC10(sc_cmd);
	if (FUNC10(sc_cmd) > QEDF_MAX_BDS_PER_CMD) {
		FUNC0(&qedf->dbg_ctx,
			 "Number of SG elements %d exceeds what hardware limitation of %d.\n",
			 num_sgs, QEDF_MAX_BDS_PER_CMD);
		sc_cmd->result = DID_ERROR;
		sc_cmd->scsi_done(sc_cmd);
		return 0;
	}

	if (FUNC20(QEDF_UNLOADING, &qedf->flags) ||
	    FUNC20(QEDF_DBG_STOP_IO, &qedf->flags)) {
		FUNC1(&qedf->dbg_ctx, QEDF_LOG_IO,
			  "Returning DNC as unloading or stop io, flags 0x%lx.\n",
			  qedf->flags);
		sc_cmd->result = DID_NO_CONNECT << 16;
		sc_cmd->scsi_done(sc_cmd);
		return 0;
	}

	if (!qedf->pdev->msix_enabled) {
		FUNC1(&(qedf->dbg_ctx), QEDF_LOG_IO,
		    "Completing sc_cmd=%p DID_NO_CONNECT as MSI-X is not enabled.\n",
		    sc_cmd);
		sc_cmd->result = DID_NO_CONNECT << 16;
		sc_cmd->scsi_done(sc_cmd);
		return 0;
	}

	rval = FUNC6(rport);
	if (rval) {
		FUNC1(&qedf->dbg_ctx, QEDF_LOG_IO,
			  "fc_remote_port_chkready failed=0x%x for port_id=0x%06x.\n",
			  rval, rport->port_id);
		sc_cmd->result = rval;
		sc_cmd->scsi_done(sc_cmd);
		return 0;
	}

	/* Retry command if we are doing a qed drain operation */
	if (FUNC20(QEDF_DRAIN_ACTIVE, &qedf->flags)) {
		FUNC1(&qedf->dbg_ctx, QEDF_LOG_IO, "Drain active.\n");
		rc = SCSI_MLQUEUE_HOST_BUSY;
		goto exit_qcmd;
	}

	if (lport->state != LPORT_ST_READY ||
	    FUNC5(&qedf->link_state) != QEDF_LINK_UP) {
		FUNC1(&qedf->dbg_ctx, QEDF_LOG_IO, "Link down.\n");
		rc = SCSI_MLQUEUE_HOST_BUSY;
		goto exit_qcmd;
	}

	/* rport and tgt are allocated together, so tgt should be non-NULL */
	fcport = (struct qedf_rport *)&rp[1];

	if (!FUNC20(QEDF_RPORT_SESSION_READY, &fcport->flags) ||
	    FUNC20(QEDF_RPORT_UPLOADING_CONNECTION, &fcport->flags)) {
		/*
		 * Session is not offloaded yet. Let SCSI-ml retry
		 * the command.
		 */
		rc = SCSI_MLQUEUE_TARGET_BUSY;
		goto exit_qcmd;
	}

	FUNC4(&fcport->ios_to_queue);

	if (fcport->retry_delay_timestamp) {
		if (FUNC21(jiffies, fcport->retry_delay_timestamp)) {
			fcport->retry_delay_timestamp = 0;
		} else {
			/* If retry_delay timer is active, flow off the ML */
			rc = SCSI_MLQUEUE_TARGET_BUSY;
			FUNC3(&fcport->ios_to_queue);
			goto exit_qcmd;
		}
	}

	io_req = FUNC8(fcport, QEDF_SCSI_CMD);
	if (!io_req) {
		rc = SCSI_MLQUEUE_HOST_BUSY;
		FUNC3(&fcport->ios_to_queue);
		goto exit_qcmd;
	}

	io_req->sc_cmd = sc_cmd;

	/* Take fcport->rport_lock for posting to fcport send queue */
	FUNC13(&fcport->rport_lock, flags);
	if (FUNC9(fcport, io_req)) {
		FUNC2(&(qedf->dbg_ctx), "Unable to post io_req\n");
		/* Return SQE to pool */
		FUNC4(&fcport->free_sqes);
		rc = SCSI_MLQUEUE_HOST_BUSY;
	}
	FUNC14(&fcport->rport_lock, flags);
	FUNC3(&fcport->ios_to_queue);

exit_qcmd:
	return rc;
}