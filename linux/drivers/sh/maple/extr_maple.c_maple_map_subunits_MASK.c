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
struct maple_device_specify {int unit; int /*<<< orphan*/  port; } ;
struct maple_device {int /*<<< orphan*/  busy; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAPLE_COMMAND_DEVINFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct maple_device_specify*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  check_maple_device ; 
 int /*<<< orphan*/  FUNC2 (struct maple_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct maple_device* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  maple_bus_type ; 
 int scanning ; 

__attribute__((used)) static void FUNC4(struct maple_device *mdev, int submask)
{
	int retval, k, devcheck;
	struct maple_device *mdev_add;
	struct maple_device_specify ds;

	ds.port = mdev->port;
	for (k = 0; k < 5; k++) {
		ds.unit = k + 1;
		retval =
		    FUNC1(&maple_bus_type, NULL, &ds,
				     check_maple_device);
		if (retval) {
			submask = submask >> 1;
			continue;
		}
		devcheck = submask & 0x01;
		if (devcheck) {
			mdev_add = FUNC3(mdev->port, k + 1);
			if (!mdev_add)
				return;
			FUNC0(&mdev_add->busy, 1);
			FUNC2(mdev_add, 0, MAPLE_COMMAND_DEVINFO,
				0, NULL);
			/* mark that we are checking sub devices */
			scanning = 1;
		}
		submask = submask >> 1;
	}
}