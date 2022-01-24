#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;TYPE_4__* device; } ;
struct ipr_resource_entry {int needs_sync_complete; int /*<<< orphan*/  raw_mode; int /*<<< orphan*/  resetting_device; int /*<<< orphan*/  in_erp; } ;
struct ipr_ioa_cfg {int /*<<< orphan*/  host; } ;
struct TYPE_6__ {int /*<<< orphan*/  ioasc; } ;
struct TYPE_7__ {TYPE_1__ hdr; } ;
struct TYPE_8__ {TYPE_2__ ioasa; } ;
struct ipr_cmnd {TYPE_5__* hrrq; int /*<<< orphan*/  queue; scalar_t__ eh_comp; struct scsi_cmnd* scsi_cmd; TYPE_3__ s; } ;
struct TYPE_10__ {int /*<<< orphan*/  hrrq_free_q; } ;
struct TYPE_9__ {int /*<<< orphan*/  channel; struct ipr_resource_entry* hostdata; } ;

/* Variables and functions */
 int DID_ABORT ; 
 int DID_ERROR ; 
 int DID_IMM_RETRY ; 
 int DID_NO_CONNECT ; 
 int DID_PASSTHROUGH ; 
#define  IPR_IOASA_IR_DUAL_IOA_DISABLED 139 
#define  IPR_IOASC_ABORTED_CMD_TERM_BY_HOST 138 
#define  IPR_IOASC_BUS_WAS_RESET 137 
#define  IPR_IOASC_BUS_WAS_RESET_BY_OTHER 136 
#define  IPR_IOASC_HW_DEV_BUS_STATUS 135 
#define  IPR_IOASC_HW_SEL_TIMEOUT 134 
 int IPR_IOASC_IOASC_MASK ; 
#define  IPR_IOASC_IR_NON_OPTIMIZED 133 
#define  IPR_IOASC_IR_NO_CMDS_TO_2ND_IOA 132 
#define  IPR_IOASC_IR_RESOURCE_HANDLE 131 
#define  IPR_IOASC_MED_DO_NOT_REALLOC 130 
#define  IPR_IOASC_NR_INIT_CMD_REQUIRED 129 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
#define  IPR_IOASC_SYNC_REQUIRED 128 
 int /*<<< orphan*/  RECOVERED_ERROR ; 
 int SAM_STAT_CHECK_CONDITION ; 
 int /*<<< orphan*/  FUNC2 (struct ipr_cmnd*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ipr_ioa_cfg*,struct ipr_cmnd*,struct ipr_resource_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipr_cmnd*) ; 
 int /*<<< orphan*/  FUNC7 (struct ipr_cmnd*) ; 
 int /*<<< orphan*/  FUNC8 (struct ipr_cmnd*) ; 
 int /*<<< orphan*/  FUNC9 (struct ipr_resource_entry*) ; 
 int /*<<< orphan*/  FUNC10 (struct ipr_resource_entry*) ; 
 int /*<<< orphan*/  FUNC11 (struct ipr_resource_entry*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC16(struct ipr_ioa_cfg *ioa_cfg,
			      struct ipr_cmnd *ipr_cmd)
{
	struct scsi_cmnd *scsi_cmd = ipr_cmd->scsi_cmd;
	struct ipr_resource_entry *res = scsi_cmd->device->hostdata;
	u32 ioasc = FUNC3(ipr_cmd->s.ioasa.hdr.ioasc);
	u32 masked_ioasc = ioasc & IPR_IOASC_IOASC_MASK;

	if (!res) {
		FUNC2(ipr_cmd);
		return;
	}

	if (!FUNC9(res) && masked_ioasc != IPR_IOASC_HW_DEV_BUS_STATUS)
		FUNC7(ipr_cmd);

	FUNC5(ioa_cfg, ipr_cmd, res);

	switch (masked_ioasc) {
	case IPR_IOASC_ABORTED_CMD_TERM_BY_HOST:
		if (FUNC10(res))
			scsi_cmd->result |= (DID_ABORT << 16);
		else
			scsi_cmd->result |= (DID_IMM_RETRY << 16);
		break;
	case IPR_IOASC_IR_RESOURCE_HANDLE:
	case IPR_IOASC_IR_NO_CMDS_TO_2ND_IOA:
		scsi_cmd->result |= (DID_NO_CONNECT << 16);
		break;
	case IPR_IOASC_HW_SEL_TIMEOUT:
		scsi_cmd->result |= (DID_NO_CONNECT << 16);
		if (!FUNC10(res))
			res->needs_sync_complete = 1;
		break;
	case IPR_IOASC_SYNC_REQUIRED:
		if (!res->in_erp)
			res->needs_sync_complete = 1;
		scsi_cmd->result |= (DID_IMM_RETRY << 16);
		break;
	case IPR_IOASC_MED_DO_NOT_REALLOC: /* prevent retries */
	case IPR_IOASA_IR_DUAL_IOA_DISABLED:
		/*
		 * exception: do not set DID_PASSTHROUGH on CHECK CONDITION
		 * so SCSI mid-layer and upper layers handle it accordingly.
		 */
		if (scsi_cmd->result != SAM_STAT_CHECK_CONDITION)
			scsi_cmd->result |= (DID_PASSTHROUGH << 16);
		break;
	case IPR_IOASC_BUS_WAS_RESET:
	case IPR_IOASC_BUS_WAS_RESET_BY_OTHER:
		/*
		 * Report the bus reset and ask for a retry. The device
		 * will give CC/UA the next command.
		 */
		if (!res->resetting_device)
			FUNC14(ioa_cfg->host, scsi_cmd->device->channel);
		scsi_cmd->result |= (DID_ERROR << 16);
		if (!FUNC10(res))
			res->needs_sync_complete = 1;
		break;
	case IPR_IOASC_HW_DEV_BUS_STATUS:
		scsi_cmd->result |= FUNC1(ioasc);
		if (FUNC1(ioasc) == SAM_STAT_CHECK_CONDITION) {
			if (!FUNC8(ipr_cmd)) {
				if (!FUNC10(res)) {
					FUNC6(ipr_cmd);
					return;
				}
			}
		}
		if (!FUNC10(res))
			res->needs_sync_complete = 1;
		break;
	case IPR_IOASC_NR_INIT_CMD_REQUIRED:
		break;
	case IPR_IOASC_IR_NON_OPTIMIZED:
		if (res->raw_mode) {
			res->raw_mode = 0;
			scsi_cmd->result |= (DID_IMM_RETRY << 16);
		} else
			scsi_cmd->result |= (DID_ERROR << 16);
		break;
	default:
		if (FUNC0(ioasc) > RECOVERED_ERROR)
			scsi_cmd->result |= (DID_ERROR << 16);
		if (!FUNC11(res) && !FUNC10(res))
			res->needs_sync_complete = 1;
		break;
	}

	FUNC13(ipr_cmd->scsi_cmd);
	scsi_cmd->scsi_done(scsi_cmd);
	if (ipr_cmd->eh_comp)
		FUNC4(ipr_cmd->eh_comp);
	FUNC12(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_free_q);
}