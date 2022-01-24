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
struct dasd_device {struct dasd_block* block; int /*<<< orphan*/  flags; } ;
struct dasd_block {int dummy; } ;
struct ccw_device {int /*<<< orphan*/ * handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_FLAG_OFFLINE ; 
 int /*<<< orphan*/  DASD_FLAG_SAFE_OFFLINE_RUNNING ; 
 int /*<<< orphan*/  DASD_STATE_NEW ; 
 scalar_t__ FUNC0 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*) ; 
 struct dasd_device* FUNC2 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct dasd_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC9(struct ccw_device *cdev)
{
	struct dasd_device *device;
	struct dasd_block *block;

	cdev->handler = NULL;

	device = FUNC2(cdev);
	if (FUNC0(device)) {
		FUNC5(cdev);
		return;
	}
	if (FUNC7(DASD_FLAG_OFFLINE, &device->flags) &&
	    !FUNC8(DASD_FLAG_SAFE_OFFLINE_RUNNING, &device->flags)) {
		/* Already doing offline processing */
		FUNC4(device);
		FUNC5(cdev);
		return;
	}
	/*
	 * This device is removed unconditionally. Set offline
	 * flag to prevent dasd_open from opening it while it is
	 * no quite down yet.
	 */
	FUNC6(device, DASD_STATE_NEW);
	/* dasd_delete_device destroys the device reference. */
	block = device->block;
	FUNC1(device);
	/*
	 * life cycle of block is bound to device, so delete it after
	 * device was safely removed
	 */
	if (block)
		FUNC3(block);

	FUNC5(cdev);
}