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
struct scsi_cmnd {int sc_data_direction; int result; int /*<<< orphan*/  sense_buffer; int /*<<< orphan*/ * cmnd; int /*<<< orphan*/  cmd_len; TYPE_1__* device; } ;
struct mvumi_msg_frame {unsigned short device_id; scalar_t__ data_transfer_length; scalar_t__ sg_counts; int /*<<< orphan*/ * payload; int /*<<< orphan*/  req_function; int /*<<< orphan*/  cdb_length; int /*<<< orphan*/  cdb; scalar_t__ cmd_flag; } ;
struct mvumi_hba {TYPE_2__* pdev; } ;
struct mvumi_cmd {struct mvumi_msg_frame* frame; int /*<<< orphan*/  cmd_status; struct scsi_cmnd* scmd; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ lun; scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CL_FUN_SCSI_CMD ; 
 scalar_t__ CMD_FLAG_DATA_IN ; 
 scalar_t__ CMD_FLAG_DATA_OUT ; 
 scalar_t__ CMD_FLAG_NON_DATA ; 
 int DID_OK ; 
#define  DMA_BIDIRECTIONAL 131 
#define  DMA_FROM_DEVICE 130 
#define  DMA_NONE 129 
#define  DMA_TO_DEVICE 128 
 int DRIVER_SENSE ; 
 int /*<<< orphan*/  ILLEGAL_REQUEST ; 
 int /*<<< orphan*/  REQ_STATUS_PENDING ; 
 int SAM_STAT_CHECK_CONDITION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mvumi_hba*,struct scsi_cmnd*,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC3 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned char FUNC5(struct mvumi_hba *mhba,
				struct scsi_cmnd *scmd, struct mvumi_cmd *cmd)
{
	struct mvumi_msg_frame *pframe;

	cmd->scmd = scmd;
	cmd->cmd_status = REQ_STATUS_PENDING;
	pframe = cmd->frame;
	pframe->device_id = ((unsigned short) scmd->device->id) |
				(((unsigned short) scmd->device->lun) << 8);
	pframe->cmd_flag = 0;

	switch (scmd->sc_data_direction) {
	case DMA_NONE:
		pframe->cmd_flag |= CMD_FLAG_NON_DATA;
		break;
	case DMA_FROM_DEVICE:
		pframe->cmd_flag |= CMD_FLAG_DATA_IN;
		break;
	case DMA_TO_DEVICE:
		pframe->cmd_flag |= CMD_FLAG_DATA_OUT;
		break;
	case DMA_BIDIRECTIONAL:
	default:
		FUNC0(&mhba->pdev->dev, "unexpected data direction[%d] "
			"cmd[0x%x]\n", scmd->sc_data_direction, scmd->cmnd[0]);
		goto error;
	}

	pframe->cdb_length = scmd->cmd_len;
	FUNC1(pframe->cdb, scmd->cmnd, pframe->cdb_length);
	pframe->req_function = CL_FUN_SCSI_CMD;
	if (FUNC3(scmd)) {
		if (FUNC2(mhba, scmd, &pframe->payload[0],
			&pframe->sg_counts))
			goto error;

		pframe->data_transfer_length = FUNC3(scmd);
	} else {
		pframe->sg_counts = 0;
		pframe->data_transfer_length = 0;
	}
	return 0;

error:
	scmd->result = (DID_OK << 16) | (DRIVER_SENSE << 24) |
		SAM_STAT_CHECK_CONDITION;
	FUNC4(0, scmd->sense_buffer, ILLEGAL_REQUEST, 0x24,
									0);
	return -1;
}