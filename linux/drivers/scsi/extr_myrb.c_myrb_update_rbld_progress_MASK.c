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
struct scsi_device {int dummy; } ;
struct myrb_rbld_progress {unsigned int ldev_size; unsigned int blocks_left; int /*<<< orphan*/  ldev_num; } ;
struct myrb_hba {int last_rbld_status; int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 unsigned short MYRB_NO_STDBY_RBLD_OR_CHECK_IN_PROGRESS ; 
#define  MYRB_STATUS_RBLD_FAILED_BADBLOCKS 133 
#define  MYRB_STATUS_RBLD_FAILED_LDEV_FAILURE 132 
#define  MYRB_STATUS_RBLD_FAILED_NEW_DRIVE_FAILED 131 
#define  MYRB_STATUS_RBLD_SUCCESS 130 
#define  MYRB_STATUS_RBLD_SUCCESS_TERMINATED 129 
#define  MYRB_STATUS_SUCCESS 128 
 unsigned short FUNC0 (struct myrb_hba*,struct myrb_rbld_progress*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct scsi_device* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scsi_device*,char*,...) ; 

__attribute__((used)) static void FUNC5(struct myrb_hba *cb)
{
	struct myrb_rbld_progress rbld_buf;
	unsigned short status;

	status = FUNC0(cb, &rbld_buf);
	if (status == MYRB_NO_STDBY_RBLD_OR_CHECK_IN_PROGRESS &&
	    cb->last_rbld_status == MYRB_STATUS_SUCCESS)
		status = MYRB_STATUS_RBLD_SUCCESS;
	if (status != MYRB_NO_STDBY_RBLD_OR_CHECK_IN_PROGRESS) {
		unsigned int blocks_done =
			rbld_buf.ldev_size - rbld_buf.blocks_left;
		struct scsi_device *sdev;

		sdev = FUNC2(cb->host,
					  FUNC1(cb->host),
					  rbld_buf.ldev_num, 0);
		if (!sdev)
			return;

		switch (status) {
		case MYRB_STATUS_SUCCESS:
			FUNC4(KERN_INFO, sdev,
				    "Rebuild in Progress, %d%% completed\n",
				    (100 * (blocks_done >> 7))
				    / (rbld_buf.ldev_size >> 7));
			break;
		case MYRB_STATUS_RBLD_FAILED_LDEV_FAILURE:
			FUNC4(KERN_INFO, sdev,
				    "Rebuild Failed due to Logical Drive Failure\n");
			break;
		case MYRB_STATUS_RBLD_FAILED_BADBLOCKS:
			FUNC4(KERN_INFO, sdev,
				    "Rebuild Failed due to Bad Blocks on Other Drives\n");
			break;
		case MYRB_STATUS_RBLD_FAILED_NEW_DRIVE_FAILED:
			FUNC4(KERN_INFO, sdev,
				    "Rebuild Failed due to Failure of Drive Being Rebuilt\n");
			break;
		case MYRB_STATUS_RBLD_SUCCESS:
			FUNC4(KERN_INFO, sdev,
				    "Rebuild Completed Successfully\n");
			break;
		case MYRB_STATUS_RBLD_SUCCESS_TERMINATED:
			FUNC4(KERN_INFO, sdev,
				     "Rebuild Successfully Terminated\n");
			break;
		default:
			break;
		}
		FUNC3(sdev);
	}
	cb->last_rbld_status = status;
}