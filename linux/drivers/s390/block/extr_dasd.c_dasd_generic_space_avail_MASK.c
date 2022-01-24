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
struct dasd_device {int /*<<< orphan*/  stopped; TYPE_2__* block; TYPE_1__* cdev; } ;
struct TYPE_4__ {scalar_t__ request_queue; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_STOPPED_NOSPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dasd_device*,char*,char*) ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  generic_waitq ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct dasd_device *device)
{
	FUNC5(&device->cdev->dev, "Extent pool space is available\n");
	FUNC0(DBF_WARNING, device, "%s", "space available");

	FUNC2(device, DASD_STOPPED_NOSPC);
	FUNC4(device);

	if (device->block) {
		FUNC3(device->block);
		if (device->block->request_queue)
			FUNC1(device->block->request_queue, true);
	}
	if (!device->stopped)
		FUNC6(&generic_waitq);
}