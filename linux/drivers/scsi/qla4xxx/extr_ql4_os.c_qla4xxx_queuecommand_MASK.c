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
struct srb {int dummy; } ;
struct scsi_qla_host {int /*<<< orphan*/  srb_mempool; int /*<<< orphan*/  dpc_flags; int /*<<< orphan*/  flags; } ;
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;TYPE_1__* device; } ;
struct iscsi_cls_session {int dummy; } ;
struct ddb_entry {struct iscsi_cls_session* sess; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {struct ddb_entry* hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_EEH_BUSY ; 
 int /*<<< orphan*/  AF_LINK_UP ; 
 int /*<<< orphan*/  AF_LOOPBACK ; 
 int /*<<< orphan*/  AF_ONLINE ; 
 int /*<<< orphan*/  AF_PCI_CHANNEL_IO_PERM_FAILURE ; 
 int DID_IMM_RETRY ; 
 int DID_NO_CONNECT ; 
 int DID_REQUEUE ; 
 int /*<<< orphan*/  DPC_HA_NEED_QUIESCENT ; 
 int /*<<< orphan*/  DPC_HA_UNRECOVERABLE ; 
 int /*<<< orphan*/  DPC_POST_IDC_ACK ; 
 int /*<<< orphan*/  DPC_RESET_ACTIVE ; 
 int /*<<< orphan*/  DPC_RESET_HA ; 
 int /*<<< orphan*/  DPC_RESET_HA_FW_CONTEXT ; 
 int /*<<< orphan*/  DPC_RESET_HA_INTR ; 
 int /*<<< orphan*/  DPC_RESTORE_ACB ; 
 int QLA_SUCCESS ; 
 int SCSI_MLQUEUE_HOST_BUSY ; 
 int FUNC0 (struct iscsi_cls_session*) ; 
 int /*<<< orphan*/  FUNC1 (struct srb*,int /*<<< orphan*/ ) ; 
 struct srb* FUNC2 (struct scsi_qla_host*,struct ddb_entry*,struct scsi_cmnd*) ; 
 int FUNC3 (struct scsi_qla_host*,struct srb*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_qla_host*,struct srb*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct scsi_qla_host* FUNC7 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC8(struct Scsi_Host *host, struct scsi_cmnd *cmd)
{
	struct scsi_qla_host *ha = FUNC7(host);
	struct ddb_entry *ddb_entry = cmd->device->hostdata;
	struct iscsi_cls_session *sess = ddb_entry->sess;
	struct srb *srb;
	int rval;

	if (FUNC6(AF_EEH_BUSY, &ha->flags)) {
		if (FUNC6(AF_PCI_CHANNEL_IO_PERM_FAILURE, &ha->flags))
			cmd->result = DID_NO_CONNECT << 16;
		else
			cmd->result = DID_REQUEUE << 16;
		goto qc_fail_command;
	}

	if (!sess) {
		cmd->result = DID_IMM_RETRY << 16;
		goto qc_fail_command;
	}

	rval = FUNC0(sess);
	if (rval) {
		cmd->result = rval;
		goto qc_fail_command;
	}

	if (FUNC6(DPC_RESET_HA_INTR, &ha->dpc_flags) ||
	    FUNC6(DPC_RESET_ACTIVE, &ha->dpc_flags) ||
	    FUNC6(DPC_RESET_HA, &ha->dpc_flags) ||
	    FUNC6(DPC_HA_UNRECOVERABLE, &ha->dpc_flags) ||
	    FUNC6(DPC_HA_NEED_QUIESCENT, &ha->dpc_flags) ||
	    !FUNC6(AF_ONLINE, &ha->flags) ||
	    !FUNC6(AF_LINK_UP, &ha->flags) ||
	    FUNC6(AF_LOOPBACK, &ha->flags) ||
	    FUNC6(DPC_POST_IDC_ACK, &ha->dpc_flags) ||
	    FUNC6(DPC_RESTORE_ACB, &ha->dpc_flags) ||
	    FUNC6(DPC_RESET_HA_FW_CONTEXT, &ha->dpc_flags))
		goto qc_host_busy;

	srb = FUNC2(ha, ddb_entry, cmd);
	if (!srb)
		goto qc_host_busy;

	rval = FUNC3(ha, srb);
	if (rval != QLA_SUCCESS)
		goto qc_host_busy_free_sp;

	return 0;

qc_host_busy_free_sp:
	FUNC4(ha, srb);
	FUNC1(srb, ha->srb_mempool);

qc_host_busy:
	return SCSI_MLQUEUE_HOST_BUSY;

qc_fail_command:
	cmd->scsi_done(cmd);

	return 0;
}