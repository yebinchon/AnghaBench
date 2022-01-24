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
struct tape_device {int tape_state; int /*<<< orphan*/  cdev_id; int /*<<< orphan*/  cdev; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,...) ; 
 int EBUSY ; 
 int ENODEV ; 
#define  TS_INIT 130 
#define  TS_NOT_OPER 129 
#define  TS_UNUSED 128 
 struct tape_device* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tape_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct tape_device*,int const) ; 

int
FUNC8(struct ccw_device *cdev)
{
	struct tape_device *device;

	device = FUNC2(&cdev->dev);
	if (!device) {
		return -ENODEV;
	}

	FUNC1(3, "(%08x): tape_generic_offline(%p)\n",
		device->cdev_id, device);

	FUNC4(FUNC3(device->cdev));
	switch (device->tape_state) {
		case TS_INIT:
		case TS_NOT_OPER:
			FUNC5(FUNC3(device->cdev));
			break;
		case TS_UNUSED:
			FUNC7(device, TS_INIT);
			FUNC5(FUNC3(device->cdev));
			FUNC6(device);
			break;
		default:
			FUNC0(3, "(%08x): Set offline failed "
				"- drive in use.\n",
				device->cdev_id);
			FUNC5(FUNC3(device->cdev));
			return -EBUSY;
	}

	FUNC1(3, "(%08x): Drive set offline.\n", device->cdev_id);
	return 0;
}