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
struct scsi_disk {int ignore_medium_access_errors; scalar_t__ medium_access_timed_out; scalar_t__ max_medium_access_timeouts; } ;
struct scsi_device {int /*<<< orphan*/  state_mutex; } ;
struct scsi_cmnd {int /*<<< orphan*/  result; struct scsi_device* device; TYPE_1__* request; } ;
struct TYPE_2__ {int /*<<< orphan*/  rq_disk; } ;

/* Variables and functions */
 scalar_t__ DID_TIME_OUT ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  SDEV_OFFLINE ; 
 int SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 struct scsi_disk* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC8(struct scsi_cmnd *scmd, int eh_disp)
{
	struct scsi_disk *sdkp = FUNC6(scmd->request->rq_disk);
	struct scsi_device *sdev = scmd->device;

	if (!FUNC4(sdev) ||
	    !FUNC7(scmd) ||
	    FUNC0(scmd->result) != DID_TIME_OUT ||
	    eh_disp != SUCCESS)
		return eh_disp;

	/*
	 * The device has timed out executing a medium access command.
	 * However, the TEST UNIT READY command sent during error
	 * handling completed successfully. Either the device is in the
	 * process of recovering or has it suffered an internal failure
	 * that prevents access to the storage medium.
	 */
	if (!sdkp->ignore_medium_access_errors) {
		sdkp->medium_access_timed_out++;
		sdkp->ignore_medium_access_errors = true;
	}

	/*
	 * If the device keeps failing read/write commands but TEST UNIT
	 * READY always completes successfully we assume that medium
	 * access is no longer possible and take the device offline.
	 */
	if (sdkp->medium_access_timed_out >= sdkp->max_medium_access_timeouts) {
		FUNC3(KERN_ERR, scmd,
			    "Medium access timeout failure. Offlining disk!\n");
		FUNC1(&sdev->state_mutex);
		FUNC5(sdev, SDEV_OFFLINE);
		FUNC2(&sdev->state_mutex);

		return SUCCESS;
	}

	return eh_disp;
}