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
struct dasd_device {int /*<<< orphan*/  flags; struct dasd_block* block; } ;
struct dasd_block {scalar_t__ bdev; int /*<<< orphan*/  open_count; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_FLAG_OFFLINE ; 
 int /*<<< orphan*/  DASD_FLAG_SAFE_OFFLINE ; 
 int /*<<< orphan*/  DASD_FLAG_SAFE_OFFLINE_RUNNING ; 
 int /*<<< orphan*/  DASD_STATE_NEW ; 
 int EBUSY ; 
 int ERESTARTSYS ; 
 scalar_t__ FUNC0 (struct dasd_device*) ; 
 int FUNC1 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dasd_device*) ; 
 struct dasd_device* FUNC6 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct dasd_block*) ; 
 int /*<<< orphan*/  FUNC8 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct dasd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shutdown_waitq ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC22(struct ccw_device *cdev)
{
	struct dasd_device *device;
	struct dasd_block *block;
	int max_count, open_count, rc;
	unsigned long flags;

	rc = 0;
	FUNC16(FUNC13(cdev), flags);
	device = FUNC6(cdev);
	if (FUNC0(device)) {
		FUNC17(FUNC13(cdev), flags);
		return FUNC1(device);
	}

	/*
	 * We must make sure that this device is currently not in use.
	 * The open_count is increased for every opener, that includes
	 * the blkdev_get in dasd_scan_partitions. We are only interested
	 * in the other openers.
	 */
	if (device->block) {
		max_count = device->block->bdev ? 0 : -1;
		open_count = FUNC3(&device->block->open_count);
		if (open_count > max_count) {
			if (open_count > 0)
				FUNC14("%s: The DASD cannot be set offline with open count %i\n",
					FUNC11(&cdev->dev), open_count);
			else
				FUNC14("%s: The DASD cannot be set offline while it is in use\n",
					FUNC11(&cdev->dev));
			rc = -EBUSY;
			goto out_err;
		}
	}

	/*
	 * Test if the offline processing is already running and exit if so.
	 * If a safe offline is being processed this could only be a normal
	 * offline that should be able to overtake the safe offline and
	 * cancel any I/O we do not want to wait for any longer
	 */
	if (FUNC20(DASD_FLAG_OFFLINE, &device->flags)) {
		if (FUNC20(DASD_FLAG_SAFE_OFFLINE_RUNNING, &device->flags)) {
			FUNC4(DASD_FLAG_SAFE_OFFLINE_RUNNING,
				  &device->flags);
		} else {
			rc = -EBUSY;
			goto out_err;
		}
	}
	FUNC15(DASD_FLAG_OFFLINE, &device->flags);

	/*
	 * if safe_offline is called set safe_offline_running flag and
	 * clear safe_offline so that a call to normal offline
	 * can overrun safe_offline processing
	 */
	if (FUNC18(DASD_FLAG_SAFE_OFFLINE, &device->flags) &&
	    !FUNC19(DASD_FLAG_SAFE_OFFLINE_RUNNING, &device->flags)) {
		/* need to unlock here to wait for outstanding I/O */
		FUNC17(FUNC13(cdev), flags);
		/*
		 * If we want to set the device safe offline all IO operations
		 * should be finished before continuing the offline process
		 * so sync bdev first and then wait for our queues to become
		 * empty
		 */
		if (device->block) {
			rc = FUNC12(device->block->bdev);
			if (rc != 0)
				goto interrupted;
		}
		FUNC9(device);
		rc = FUNC21(shutdown_waitq,
					      FUNC2(device));
		if (rc != 0)
			goto interrupted;

		/*
		 * check if a normal offline process overtook the offline
		 * processing in this case simply do nothing beside returning
		 * that we got interrupted
		 * otherwise mark safe offline as not running any longer and
		 * continue with normal offline
		 */
		FUNC16(FUNC13(cdev), flags);
		if (!FUNC20(DASD_FLAG_SAFE_OFFLINE_RUNNING, &device->flags)) {
			rc = -ERESTARTSYS;
			goto out_err;
		}
		FUNC4(DASD_FLAG_SAFE_OFFLINE_RUNNING, &device->flags);
	}
	FUNC17(FUNC13(cdev), flags);

	FUNC10(device, DASD_STATE_NEW);
	/* dasd_delete_device destroys the device reference. */
	block = device->block;
	FUNC5(device);
	/*
	 * life cycle of block is bound to device, so delete it after
	 * device was safely removed
	 */
	if (block)
		FUNC7(block);

	return 0;

interrupted:
	/* interrupted by signal */
	FUNC16(FUNC13(cdev), flags);
	FUNC4(DASD_FLAG_SAFE_OFFLINE_RUNNING, &device->flags);
	FUNC4(DASD_FLAG_OFFLINE, &device->flags);
out_err:
	FUNC8(device);
	FUNC17(FUNC13(cdev), flags);
	return rc;
}