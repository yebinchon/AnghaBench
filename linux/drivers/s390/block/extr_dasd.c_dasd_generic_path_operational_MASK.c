#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dasd_device {int stopped; TYPE_2__* block; TYPE_1__* cdev; } ;
struct TYPE_4__ {scalar_t__ request_queue; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DASD_STOPPED_DC_WAIT ; 
 int DASD_UNRESUMED_PM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dasd_device*,char*,char*) ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  generic_waitq ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct dasd_device *device)
{
	FUNC6(&device->cdev->dev, "A channel path to the device has become "
		 "operational\n");
	FUNC0(DBF_WARNING, device, "%s", "path operational");
	FUNC2(device, DASD_STOPPED_DC_WAIT);
	if (device->stopped & DASD_UNRESUMED_PM) {
		FUNC2(device, DASD_UNRESUMED_PM);
		FUNC3(device);
		return 1;
	}
	FUNC5(device);
	if (device->block) {
		FUNC4(device->block);
		if (device->block->request_queue)
			FUNC1(device->block->request_queue,
					     true);
		}

	if (!device->stopped)
		FUNC7(&generic_waitq);

	return 1;
}