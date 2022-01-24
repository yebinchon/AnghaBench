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
struct visordisk_info {int /*<<< orphan*/  ios_threshold; int /*<<< orphan*/  error_count; } ;
struct scsi_device {struct visordisk_info* hostdata; } ;
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;struct scsi_device* device; } ;

/* Variables and functions */
 int DID_RESET ; 
 int /*<<< orphan*/  IOS_ERROR_THRESHOLD ; 
 int SUCCESS ; 
 int /*<<< orphan*/  TASK_MGMT_LUN_RESET ; 
 scalar_t__ VISORHBA_ERROR_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC5(struct scsi_cmnd *scsicmd)
{
	/* issue TASK_MGMT_LUN_RESET */
	struct scsi_device *scsidev;
	struct visordisk_info *vdisk;
	int rtn;

	scsidev = scsicmd->device;
	vdisk = scsidev->hostdata;
	if (FUNC1(&vdisk->error_count) < VISORHBA_ERROR_COUNT)
		FUNC0(&vdisk->error_count);
	else
		FUNC2(&vdisk->ios_threshold, IOS_ERROR_THRESHOLD);
	rtn = FUNC3(TASK_MGMT_LUN_RESET, scsidev);
	if (rtn == SUCCESS) {
		scsicmd->result = DID_RESET << 16;
		scsicmd->scsi_done(scsicmd);
	}
	return rtn;
}