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
struct tape_device {scalar_t__ tape_state; int /*<<< orphan*/  cdev; TYPE_1__* discipline; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int EBUSY ; 
 int ENODEV ; 
 scalar_t__ TS_BLKUSE ; 
 scalar_t__ TS_IN_USE ; 
 scalar_t__ TS_NOT_OPER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tape_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(struct tape_device *device)
{
	int rc;

	FUNC2(FUNC1(device->cdev));
	if (device->tape_state == TS_NOT_OPER) {
		FUNC0(6, "TAPE:nodev\n");
		rc = -ENODEV;
	} else if (device->tape_state == TS_IN_USE) {
		FUNC0(6, "TAPE:dbusy\n");
		rc = -EBUSY;
	} else if (device->tape_state == TS_BLKUSE) {
		FUNC0(6, "TAPE:dbusy\n");
		rc = -EBUSY;
	} else if (device->discipline != NULL &&
		   !FUNC5(device->discipline->owner)) {
		FUNC0(6, "TAPE:nodisc\n");
		rc = -ENODEV;
	} else {
		FUNC4(device, TS_IN_USE);
		rc = 0;
	}
	FUNC3(FUNC1(device->cdev));
	return rc;
}