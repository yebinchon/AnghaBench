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
struct scsi_cmnd {int result; int* cmnd; scalar_t__ underflow; int flags; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;int /*<<< orphan*/  sense_buffer; int /*<<< orphan*/  cmd_len; TYPE_1__* device; } ;
struct ipr_resource_entry {scalar_t__ needs_sync_complete; int /*<<< orphan*/  res_handle; scalar_t__ raw_mode; scalar_t__ reset_occurred; TYPE_2__* sata_port; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags_hi; int /*<<< orphan*/  request_type; int /*<<< orphan*/  flags_lo; int /*<<< orphan*/  cdb; } ;
struct ipr_ioarcb {TYPE_4__ cmd_pkt; int /*<<< orphan*/  res_handle; } ;
struct ipr_ioa_cfg {scalar_t__ sis64; struct ipr_hrr_queue* hrrq; TYPE_3__* host; } ;
struct ipr_hrr_queue {int ioa_is_dead; int /*<<< orphan*/  lock; int /*<<< orphan*/  hrrq_pending_q; int /*<<< orphan*/  hrrq_free_q; int /*<<< orphan*/  allow_cmds; scalar_t__ removing_ioa; } ;
struct ipr_cmnd {int /*<<< orphan*/  queue; int /*<<< orphan*/  done; struct scsi_cmnd* scsi_cmd; struct ipr_ioarcb ioarcb; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_7__ {int /*<<< orphan*/  host_lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  ap; } ;
struct TYPE_5__ {struct ipr_resource_entry* hostdata; } ;

/* Variables and functions */
 int DID_NO_CONNECT ; 
 int DID_OK ; 
 int /*<<< orphan*/  IPR_FLAGS_HI_NO_LINK_DESC ; 
 int /*<<< orphan*/  IPR_FLAGS_HI_NO_ULEN_CHK ; 
 int /*<<< orphan*/  IPR_FLAGS_HI_SYNC_COMPLETE ; 
 int /*<<< orphan*/  IPR_FLAGS_LO_ALIGNED_BFR ; 
 int /*<<< orphan*/  IPR_FLAGS_LO_DELAY_AFTER_RST ; 
 int /*<<< orphan*/  IPR_FLAGS_LO_SIMPLE_TASK ; 
 int /*<<< orphan*/  IPR_FLAGS_LO_UNTAGGED_TASK ; 
 int /*<<< orphan*/  FUNC0 (struct ipr_resource_entry*) ; 
 int IPR_QUERY_RSRC_STATE ; 
 int /*<<< orphan*/  IPR_RQTYPE_IOACMD ; 
 int /*<<< orphan*/  IPR_RQTYPE_PIPE ; 
 int /*<<< orphan*/  IPR_TRACE_START ; 
 int SCMD_TAGGED ; 
 int SCSI_MLQUEUE_HOST_BUSY ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 struct ipr_cmnd* FUNC1 (struct ipr_hrr_queue*) ; 
 int FUNC2 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ipr_ioa_cfg*,struct ipr_cmnd*) ; 
 int FUNC4 (struct ipr_ioa_cfg*,struct ipr_cmnd*) ; 
 int FUNC5 (struct ipr_ioa_cfg*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipr_cmnd*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct ipr_resource_entry*) ; 
 scalar_t__ FUNC8 (struct ipr_resource_entry*) ; 
 scalar_t__ FUNC9 (struct ipr_resource_entry*) ; 
 scalar_t__ FUNC10 (struct ipr_resource_entry*) ; 
 int /*<<< orphan*/  ipr_scsi_done ; 
 int /*<<< orphan*/  ipr_scsi_eh_done ; 
 int /*<<< orphan*/  FUNC11 (struct ipr_cmnd*) ; 
 int /*<<< orphan*/  FUNC12 (struct ipr_cmnd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC20 (int) ; 

__attribute__((used)) static int FUNC21(struct Scsi_Host *shost,
			    struct scsi_cmnd *scsi_cmd)
{
	struct ipr_ioa_cfg *ioa_cfg;
	struct ipr_resource_entry *res;
	struct ipr_ioarcb *ioarcb;
	struct ipr_cmnd *ipr_cmd;
	unsigned long hrrq_flags, lock_flags;
	int rc;
	struct ipr_hrr_queue *hrrq;
	int hrrq_id;

	ioa_cfg = (struct ipr_ioa_cfg *)shost->hostdata;

	scsi_cmd->result = (DID_OK << 16);
	res = scsi_cmd->device->hostdata;

	if (FUNC8(res) && res->sata_port) {
		FUNC17(ioa_cfg->host->host_lock, lock_flags);
		rc = FUNC2(scsi_cmd, res->sata_port->ap);
		FUNC18(ioa_cfg->host->host_lock, lock_flags);
		return rc;
	}

	hrrq_id = FUNC5(ioa_cfg);
	hrrq = &ioa_cfg->hrrq[hrrq_id];

	FUNC17(hrrq->lock, hrrq_flags);
	/*
	 * We are currently blocking all devices due to a host reset
	 * We have told the host to stop giving us new requests, but
	 * ERP ops don't count. FIXME
	 */
	if (FUNC20(!hrrq->allow_cmds && !hrrq->ioa_is_dead && !hrrq->removing_ioa)) {
		FUNC18(hrrq->lock, hrrq_flags);
		return SCSI_MLQUEUE_HOST_BUSY;
	}

	/*
	 * FIXME - Create scsi_set_host_offline interface
	 *  and the ioa_is_dead check can be removed
	 */
	if (FUNC20(hrrq->ioa_is_dead || hrrq->removing_ioa || !res)) {
		FUNC18(hrrq->lock, hrrq_flags);
		goto err_nodev;
	}

	ipr_cmd = FUNC1(hrrq);
	if (ipr_cmd == NULL) {
		FUNC18(hrrq->lock, hrrq_flags);
		return SCSI_MLQUEUE_HOST_BUSY;
	}
	FUNC18(hrrq->lock, hrrq_flags);

	FUNC6(ipr_cmd, ipr_scsi_done);
	ioarcb = &ipr_cmd->ioarcb;

	FUNC14(ioarcb->cmd_pkt.cdb, scsi_cmd->cmnd, scsi_cmd->cmd_len);
	ipr_cmd->scsi_cmd = scsi_cmd;
	ipr_cmd->done = ipr_scsi_eh_done;

	if (FUNC9(res)) {
		if (scsi_cmd->underflow == 0)
			ioarcb->cmd_pkt.flags_hi |= IPR_FLAGS_HI_NO_ULEN_CHK;

		if (res->reset_occurred) {
			res->reset_occurred = 0;
			ioarcb->cmd_pkt.flags_lo |= IPR_FLAGS_LO_DELAY_AFTER_RST;
		}
	}

	if (FUNC9(res) || FUNC10(res)) {
		ioarcb->cmd_pkt.flags_hi |= IPR_FLAGS_HI_NO_LINK_DESC;

		ioarcb->cmd_pkt.flags_lo |= IPR_FLAGS_LO_ALIGNED_BFR;
		if (scsi_cmd->flags & SCMD_TAGGED)
			ioarcb->cmd_pkt.flags_lo |= IPR_FLAGS_LO_SIMPLE_TASK;
		else
			ioarcb->cmd_pkt.flags_lo |= IPR_FLAGS_LO_UNTAGGED_TASK;
	}

	if (scsi_cmd->cmnd[0] >= 0xC0 &&
	    (!FUNC9(res) || scsi_cmd->cmnd[0] == IPR_QUERY_RSRC_STATE)) {
		ioarcb->cmd_pkt.request_type = IPR_RQTYPE_IOACMD;
	}
	if (res->raw_mode && FUNC7(res)) {
		ioarcb->cmd_pkt.request_type = IPR_RQTYPE_PIPE;

		if (scsi_cmd->underflow == 0)
			ioarcb->cmd_pkt.flags_hi |= IPR_FLAGS_HI_NO_ULEN_CHK;
	}

	if (ioa_cfg->sis64)
		rc = FUNC4(ioa_cfg, ipr_cmd);
	else
		rc = FUNC3(ioa_cfg, ipr_cmd);

	FUNC17(hrrq->lock, hrrq_flags);
	if (FUNC20(rc || (!hrrq->allow_cmds && !hrrq->ioa_is_dead))) {
		FUNC13(&ipr_cmd->queue, &hrrq->hrrq_free_q);
		FUNC18(hrrq->lock, hrrq_flags);
		if (!rc)
			FUNC16(scsi_cmd);
		return SCSI_MLQUEUE_HOST_BUSY;
	}

	if (FUNC20(hrrq->ioa_is_dead)) {
		FUNC13(&ipr_cmd->queue, &hrrq->hrrq_free_q);
		FUNC18(hrrq->lock, hrrq_flags);
		FUNC16(scsi_cmd);
		goto err_nodev;
	}

	ioarcb->res_handle = res->res_handle;
	if (res->needs_sync_complete) {
		ioarcb->cmd_pkt.flags_hi |= IPR_FLAGS_HI_SYNC_COMPLETE;
		res->needs_sync_complete = 0;
	}
	FUNC13(&ipr_cmd->queue, &hrrq->hrrq_pending_q);
	FUNC12(ipr_cmd, IPR_TRACE_START, FUNC0(res));
	FUNC11(ipr_cmd);
	FUNC18(hrrq->lock, hrrq_flags);
	return 0;

err_nodev:
	FUNC17(hrrq->lock, hrrq_flags);
	FUNC15(scsi_cmd->sense_buffer, 0, SCSI_SENSE_BUFFERSIZE);
	scsi_cmd->result = (DID_NO_CONNECT << 16);
	scsi_cmd->scsi_done(scsi_cmd);
	FUNC18(hrrq->lock, hrrq_flags);
	return 0;
}