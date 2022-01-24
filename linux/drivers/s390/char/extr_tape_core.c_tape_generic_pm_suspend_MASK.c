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
struct tape_device {scalar_t__ medium_state; int tape_state; int /*<<< orphan*/  cdev_id; int /*<<< orphan*/  cdev; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 int EBUSY ; 
 int ENODEV ; 
 scalar_t__ MS_UNLOADED ; 
#define  TS_INIT 130 
#define  TS_NOT_OPER 129 
#define  TS_UNUSED 128 
 struct tape_device* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct ccw_device *cdev)
{
	struct tape_device *device;

	device = FUNC1(&cdev->dev);
	if (!device) {
		return -ENODEV;
	}

	FUNC0(3, "(%08x): tape_generic_pm_suspend(%p)\n",
		device->cdev_id, device);

	if (device->medium_state != MS_UNLOADED) {
		FUNC4("A cartridge is loaded in tape device %s, "
		       "refusing to suspend\n", FUNC2(&cdev->dev));
		return -EBUSY;
	}

	FUNC5(FUNC3(device->cdev));
	switch (device->tape_state) {
		case TS_INIT:
		case TS_NOT_OPER:
		case TS_UNUSED:
			FUNC6(FUNC3(device->cdev));
			break;
		default:
			FUNC4("Tape device %s is busy, refusing to "
			       "suspend\n", FUNC2(&cdev->dev));
			FUNC6(FUNC3(device->cdev));
			return -EBUSY;
	}

	FUNC0(3, "(%08x): Drive suspended.\n", device->cdev_id);
	return 0;
}