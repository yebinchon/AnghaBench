#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct scsi_cmnd {int result; int /*<<< orphan*/  sense_buffer; TYPE_2__* device; int /*<<< orphan*/ * cmnd; } ;
struct pmcraid_resource_entry {int sync_reqd; int /*<<< orphan*/  cfg_entry; int /*<<< orphan*/  reset_progress; int /*<<< orphan*/  write_failures; int /*<<< orphan*/  read_failures; } ;
struct pmcraid_ioasa {int /*<<< orphan*/  sense_data; int /*<<< orphan*/  auto_sense_length; int /*<<< orphan*/  ioasc; } ;
struct pmcraid_instance {int /*<<< orphan*/  host; } ;
struct pmcraid_cmd {TYPE_1__* ioa_cb; struct pmcraid_instance* drv_inst; struct scsi_cmnd* scsi_cmd; } ;
struct TYPE_4__ {int /*<<< orphan*/  channel; struct pmcraid_resource_entry* hostdata; } ;
struct TYPE_3__ {struct pmcraid_ioasa ioasa; } ;

/* Variables and functions */
 int DID_ABORT ; 
 int DID_ERROR ; 
 int DID_IMM_RETRY ; 
 int DID_NO_CONNECT ; 
 int DID_PASSTHROUGH ; 
#define  PMCRAID_IOASC_AC_TERMINATED_BY_HOST 136 
#define  PMCRAID_IOASC_HW_CANNOT_COMMUNICATE 135 
#define  PMCRAID_IOASC_HW_DEVICE_BUS_STATUS_ERROR 134 
#define  PMCRAID_IOASC_IR_INVALID_RESOURCE_HANDLE 133 
#define  PMCRAID_IOASC_ME_READ_ERROR_NO_REALLOC 132 
#define  PMCRAID_IOASC_NR_INIT_CMD_REQUIRED 131 
#define  PMCRAID_IOASC_NR_SYNC_REQUIRED 130 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PMCRAID_IOASC_SENSE_MASK ; 
 int FUNC1 (int) ; 
#define  PMCRAID_IOASC_UA_BUS_WAS_RESET 129 
#define  PMCRAID_IOASC_UA_BUS_WAS_RESET_BY_OTHER 128 
 int /*<<< orphan*/  RECOVERED_ERROR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int SAM_STAT_ACA_ACTIVE ; 
 int SAM_STAT_CHECK_CONDITION ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCSI_READ_CMD ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 scalar_t__ SCSI_WRITE_CMD ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 short FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pmcraid_cmd*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct pmcraid_cmd*) ; 
 int /*<<< orphan*/  FUNC11 (struct pmcraid_cmd*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int,struct pmcraid_cmd*) ; 
 int /*<<< orphan*/  FUNC14 (struct pmcraid_cmd*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  u16 ; 

__attribute__((used)) static int FUNC16(struct pmcraid_cmd *cmd)
{
	struct scsi_cmnd *scsi_cmd = cmd->scsi_cmd;
	struct pmcraid_resource_entry *res = scsi_cmd->device->hostdata;
	struct pmcraid_instance *pinstance = cmd->drv_inst;
	struct pmcraid_ioasa *ioasa = &cmd->ioa_cb->ioasa;
	u32 ioasc = FUNC6(ioasa->ioasc);
	u32 masked_ioasc = ioasc & PMCRAID_IOASC_SENSE_MASK;
	bool sense_copied = false;

	if (!res) {
		FUNC12("resource pointer is NULL\n");
		return 0;
	}

	/* If this was a SCSI read/write command keep count of errors */
	if (FUNC3(scsi_cmd->cmnd[0]) == SCSI_READ_CMD)
		FUNC4(&res->read_failures);
	else if (FUNC3(scsi_cmd->cmnd[0]) == SCSI_WRITE_CMD)
		FUNC4(&res->write_failures);

	if (!FUNC2(res->cfg_entry) &&
		masked_ioasc != PMCRAID_IOASC_HW_DEVICE_BUS_STATUS_ERROR) {
		FUNC11(cmd);
	}

	/* Log IOASC/IOASA information based on user settings */
	FUNC13(ioasc, cmd);

	switch (masked_ioasc) {

	case PMCRAID_IOASC_AC_TERMINATED_BY_HOST:
		scsi_cmd->result |= (DID_ABORT << 16);
		break;

	case PMCRAID_IOASC_IR_INVALID_RESOURCE_HANDLE:
	case PMCRAID_IOASC_HW_CANNOT_COMMUNICATE:
		scsi_cmd->result |= (DID_NO_CONNECT << 16);
		break;

	case PMCRAID_IOASC_NR_SYNC_REQUIRED:
		res->sync_reqd = 1;
		scsi_cmd->result |= (DID_IMM_RETRY << 16);
		break;

	case PMCRAID_IOASC_ME_READ_ERROR_NO_REALLOC:
		scsi_cmd->result |= (DID_PASSTHROUGH << 16);
		break;

	case PMCRAID_IOASC_UA_BUS_WAS_RESET:
	case PMCRAID_IOASC_UA_BUS_WAS_RESET_BY_OTHER:
		if (!res->reset_progress)
			FUNC15(pinstance->host,
					      scsi_cmd->device->channel);
		scsi_cmd->result |= (DID_ERROR << 16);
		break;

	case PMCRAID_IOASC_HW_DEVICE_BUS_STATUS_ERROR:
		scsi_cmd->result |= FUNC1(ioasc);
		res->sync_reqd = 1;

		/* if check_condition is not active return with error otherwise
		 * get/frame the sense buffer
		 */
		if (FUNC1(ioasc) !=
		    SAM_STAT_CHECK_CONDITION &&
		    FUNC1(ioasc) != SAM_STAT_ACA_ACTIVE)
			return 0;

		/* If we have auto sense data as part of IOASA pass it to
		 * mid-layer
		 */
		if (ioasa->auto_sense_length != 0) {
			short sense_len = FUNC5(ioasa->auto_sense_length);
			int data_size = FUNC8(u16, sense_len,
					      SCSI_SENSE_BUFFERSIZE);

			FUNC7(scsi_cmd->sense_buffer,
			       ioasa->sense_data,
			       data_size);
			sense_copied = true;
		}

		if (FUNC2(res->cfg_entry))
			FUNC9(cmd, sense_copied);
		else if (sense_copied)
			FUNC10(cmd);
		else
			FUNC14(cmd);

		return 1;

	case PMCRAID_IOASC_NR_INIT_CMD_REQUIRED:
		break;

	default:
		if (FUNC0(ioasc) > RECOVERED_ERROR)
			scsi_cmd->result |= (DID_ERROR << 16);
		break;
	}
	return 0;
}