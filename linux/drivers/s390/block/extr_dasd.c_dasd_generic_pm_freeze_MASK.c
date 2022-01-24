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
struct dasd_device {TYPE_1__* discipline; int /*<<< orphan*/  flags; } ;
struct ccw_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* freeze ) (struct dasd_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_FLAG_SUSPENDED ; 
 int /*<<< orphan*/  DASD_STOPPED_PM ; 
 scalar_t__ FUNC0 (struct dasd_device*) ; 
 int FUNC1 (struct dasd_device*) ; 
 struct dasd_device* FUNC2 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct dasd_device*) ; 

int FUNC7(struct ccw_device *cdev)
{
	struct dasd_device *device = FUNC2(cdev);

	if (FUNC0(device))
		return FUNC1(device);

	/* mark device as suspended */
	FUNC5(DASD_FLAG_SUSPENDED, &device->flags);

	if (device->discipline->freeze)
		device->discipline->freeze(device);

	/* disallow new I/O  */
	FUNC3(device, DASD_STOPPED_PM);

	return FUNC4(device);
}