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
struct ufshcd_lrb {int task_tag; int /*<<< orphan*/  ucd_rsp_ptr; } ;
struct TYPE_2__ {int /*<<< orphan*/  last_hibern8_exit_tstamp; } ;
struct ufs_hba {int /*<<< orphan*/  dev; int /*<<< orphan*/  eeh_work; int /*<<< orphan*/  pm_op_in_progress; TYPE_1__ ufs_stats; } ;

/* Variables and functions */
 int DID_ABORT ; 
 int DID_ERROR ; 
 scalar_t__ DID_OK ; 
 int DID_REQUEUE ; 
 int MASK_SCSI_STATUS ; 
#define  OCS_ABORTED 138 
#define  OCS_FATAL_ERROR 137 
#define  OCS_INVALID_CMD_TABLE_ATTR 136 
#define  OCS_INVALID_COMMAND_STATUS 135 
#define  OCS_INVALID_PRDT_ATTR 134 
#define  OCS_MISMATCH_DATA_BUF_SIZE 133 
#define  OCS_MISMATCH_RESP_UPIU_SIZE 132 
#define  OCS_PEER_COMM_FAILURE 131 
#define  OCS_SUCCESS 130 
#define  UPIU_TRANSACTION_REJECT_UPIU 129 
#define  UPIU_TRANSACTION_RESPONSE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ufshcd_lrb*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC9 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC10 (struct ufs_hba*,int,int) ; 
 int FUNC11 (struct ufshcd_lrb*,int) ; 

__attribute__((used)) static inline int
FUNC12(struct ufs_hba *hba, struct ufshcd_lrb *lrbp)
{
	int result = 0;
	int scsi_status;
	int ocs;

	/* overall command status of utrd */
	ocs = FUNC6(lrbp);

	switch (ocs) {
	case OCS_SUCCESS:
		result = FUNC4(lrbp->ucd_rsp_ptr);
		hba->ufs_stats.last_hibern8_exit_tstamp = FUNC2(0, 0);
		switch (result) {
		case UPIU_TRANSACTION_RESPONSE:
			/*
			 * get the response UPIU result to extract
			 * the SCSI command status
			 */
			result = FUNC5(lrbp->ucd_rsp_ptr);

			/*
			 * get the result based on SCSI status response
			 * to notify the SCSI midlayer of the command status
			 */
			scsi_status = result & MASK_SCSI_STATUS;
			result = FUNC11(lrbp, scsi_status);

			/*
			 * Currently we are only supporting BKOPs exception
			 * events hence we can ignore BKOPs exception event
			 * during power management callbacks. BKOPs exception
			 * event is not expected to be raised in runtime suspend
			 * callback as it allows the urgent bkops.
			 * During system suspend, we are anyway forcefully
			 * disabling the bkops and if urgent bkops is needed
			 * it will be enabled on system resume. Long term
			 * solution could be to abort the system suspend if
			 * UFS device needs urgent BKOPs.
			 */
			if (!hba->pm_op_in_progress &&
			    FUNC7(lrbp->ucd_rsp_ptr))
				FUNC3(&hba->eeh_work);
			break;
		case UPIU_TRANSACTION_REJECT_UPIU:
			/* TODO: handle Reject UPIU Response */
			result = DID_ERROR << 16;
			FUNC0(hba->dev,
				"Reject UPIU not fully implemented\n");
			break;
		default:
			FUNC0(hba->dev,
				"Unexpected request response code = %x\n",
				result);
			result = DID_ERROR << 16;
			break;
		}
		break;
	case OCS_ABORTED:
		result |= DID_ABORT << 16;
		break;
	case OCS_INVALID_COMMAND_STATUS:
		result |= DID_REQUEUE << 16;
		break;
	case OCS_INVALID_CMD_TABLE_ATTR:
	case OCS_INVALID_PRDT_ATTR:
	case OCS_MISMATCH_DATA_BUF_SIZE:
	case OCS_MISMATCH_RESP_UPIU_SIZE:
	case OCS_PEER_COMM_FAILURE:
	case OCS_FATAL_ERROR:
	default:
		result |= DID_ERROR << 16;
		FUNC0(hba->dev,
				"OCS error from controller = %x for tag %d\n",
				ocs, lrbp->task_tag);
		FUNC8(hba);
		FUNC9(hba);
		break;
	} /* end of switch */

	if (FUNC1(result) != DID_OK)
		FUNC10(hba, 1 << lrbp->task_tag, true);
	return result;
}