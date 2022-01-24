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
struct scsi_cmnd {int result; scalar_t__ sc_data_direction; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;int /*<<< orphan*/  device; } ;
struct fc_stats {int /*<<< orphan*/  ControlRequests; int /*<<< orphan*/  OutputBytes; int /*<<< orphan*/  OutputRequests; int /*<<< orphan*/  InputBytes; int /*<<< orphan*/  InputRequests; } ;
struct fc_rport {scalar_t__ dd_data; } ;
struct fc_remote_port {int dummy; } ;
struct fc_lport {int /*<<< orphan*/  stats; TYPE_1__* host; scalar_t__ qfull; } ;
struct fc_fcp_pkt {int /*<<< orphan*/  state; scalar_t__ req_flags; scalar_t__ data_len; scalar_t__ xfer_len; struct fc_rport* rport; struct scsi_cmnd* cmd; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  can_queue; } ;

/* Variables and functions */
 int DID_IMM_RETRY ; 
 scalar_t__ DMA_FROM_DEVICE ; 
 scalar_t__ DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FC_SRB_FREE ; 
 scalar_t__ FC_SRB_READ ; 
 scalar_t__ FC_SRB_WRITE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int SCSI_MLQUEUE_HOST_BUSY ; 
 scalar_t__ FUNC0 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_lport*) ; 
 struct fc_fcp_pkt* FUNC2 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_fcp_pkt*) ; 
 int FUNC4 (struct fc_lport*,struct fc_fcp_pkt*) ; 
 int FUNC5 (struct fc_rport*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct fc_stats* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 struct fc_lport* FUNC12 (struct Scsi_Host*) ; 
 struct fc_rport* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC15 (struct scsi_cmnd*) ; 

int FUNC16(struct Scsi_Host *shost, struct scsi_cmnd *sc_cmd)
{
	struct fc_lport *lport = FUNC12(shost);
	struct fc_rport *rport = FUNC13(FUNC10(sc_cmd->device));
	struct fc_fcp_pkt *fsp;
	int rval;
	int rc = 0;
	struct fc_stats *stats;

	rval = FUNC5(rport);
	if (rval) {
		sc_cmd->result = rval;
		sc_cmd->scsi_done(sc_cmd);
		return 0;
	}

	if (!*(struct fc_remote_port **)rport->dd_data) {
		/*
		 * rport is transitioning from blocked/deleted to
		 * online
		 */
		sc_cmd->result = DID_IMM_RETRY << 16;
		sc_cmd->scsi_done(sc_cmd);
		goto out;
	}

	if (!FUNC1(lport)) {
		if (lport->qfull) {
			if (FUNC0(lport))
				FUNC11(KERN_ERR, lport->host,
					     "libfc: queue full, "
					     "reducing can_queue to %d.\n",
					     lport->host->can_queue);
		}
		rc = SCSI_MLQUEUE_HOST_BUSY;
		goto out;
	}

	fsp = FUNC2(lport, GFP_ATOMIC);
	if (fsp == NULL) {
		rc = SCSI_MLQUEUE_HOST_BUSY;
		goto out;
	}

	/*
	 * build the libfc request pkt
	 */
	fsp->cmd = sc_cmd;	/* save the cmd */
	fsp->rport = rport;	/* set the remote port ptr */

	/*
	 * set up the transfer length
	 */
	fsp->data_len = FUNC9(sc_cmd);
	fsp->xfer_len = 0;

	/*
	 * setup the data direction
	 */
	stats = FUNC7(lport->stats, FUNC6());
	if (sc_cmd->sc_data_direction == DMA_FROM_DEVICE) {
		fsp->req_flags = FC_SRB_READ;
		stats->InputRequests++;
		stats->InputBytes += fsp->data_len;
	} else if (sc_cmd->sc_data_direction == DMA_TO_DEVICE) {
		fsp->req_flags = FC_SRB_WRITE;
		stats->OutputRequests++;
		stats->OutputBytes += fsp->data_len;
	} else {
		fsp->req_flags = 0;
		stats->ControlRequests++;
	}
	FUNC8();

	/*
	 * send it to the lower layer
	 * if we get -1 return then put the request in the pending
	 * queue.
	 */
	rval = FUNC4(lport, fsp);
	if (rval != 0) {
		fsp->state = FC_SRB_FREE;
		FUNC3(fsp);
		rc = SCSI_MLQUEUE_HOST_BUSY;
	}
out:
	return rc;
}