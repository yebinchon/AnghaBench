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
typedef  int u8 ;
typedef  int u32 ;
struct scsi_cmnd {int result; int /*<<< orphan*/  sense_buffer; } ;
struct fusion_context {int dummy; } ;

/* Variables and functions */
 int DID_BAD_TARGET ; 
 int DID_ERROR ; 
 int DID_IMM_RETRY ; 
 int DID_OK ; 
 int DRIVER_SENSE ; 
 int /*<<< orphan*/  KERN_INFO ; 
#define  MFI_STAT_CONFIG_SEQ_MISMATCH 134 
#define  MFI_STAT_DEVICE_NOT_FOUND 133 
#define  MFI_STAT_LD_INIT_IN_PROGRESS 132 
#define  MFI_STAT_LD_OFFLINE 131 
#define  MFI_STAT_OK 130 
#define  MFI_STAT_SCSI_DONE_WITH_ERROR 129 
#define  MFI_STAT_SCSI_IO_FAILED 128 
 int READ_WRITE_LDIO ; 
 int READ_WRITE_SYSPDIO ; 
 int SAM_STAT_CHECK_CONDITION ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*,int,int,int) ; 
 int FUNC4 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*,int) ; 

__attribute__((used)) static void
FUNC6(struct fusion_context *fusion,
		struct scsi_cmnd *scmd, u8 status, u8 ext_status,
		u32 data_length, u8 *sense)
{
	u8 cmd_type;
	int resid;

	cmd_type = FUNC0(scmd);
	switch (status) {

	case MFI_STAT_OK:
		scmd->result = DID_OK << 16;
		break;

	case MFI_STAT_SCSI_IO_FAILED:
	case MFI_STAT_LD_INIT_IN_PROGRESS:
		scmd->result = (DID_ERROR << 16) | ext_status;
		break;

	case MFI_STAT_SCSI_DONE_WITH_ERROR:

		scmd->result = (DID_OK << 16) | ext_status;
		if (ext_status == SAM_STAT_CHECK_CONDITION) {
			FUNC2(scmd->sense_buffer, 0,
			       SCSI_SENSE_BUFFERSIZE);
			FUNC1(scmd->sense_buffer, sense,
			       SCSI_SENSE_BUFFERSIZE);
			scmd->result |= DRIVER_SENSE << 24;
		}

		/*
		 * If the  IO request is partially completed, then MR FW will
		 * update "io_request->DataLength" field with actual number of
		 * bytes transferred.Driver will set residual bytes count in
		 * SCSI command structure.
		 */
		resid = (FUNC4(scmd) - data_length);
		FUNC5(scmd, resid);

		if (resid &&
			((cmd_type == READ_WRITE_LDIO) ||
			(cmd_type == READ_WRITE_SYSPDIO)))
			FUNC3(KERN_INFO, scmd, "BRCM Debug mfi stat 0x%x, data len"
				" requested/completed 0x%x/0x%x\n",
				status, FUNC4(scmd), data_length);
		break;

	case MFI_STAT_LD_OFFLINE:
	case MFI_STAT_DEVICE_NOT_FOUND:
		scmd->result = DID_BAD_TARGET << 16;
		break;
	case MFI_STAT_CONFIG_SEQ_MISMATCH:
		scmd->result = DID_IMM_RETRY << 16;
		break;
	default:
		scmd->result = DID_ERROR << 16;
		break;
	}
}