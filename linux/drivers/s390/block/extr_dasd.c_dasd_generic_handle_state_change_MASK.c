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
struct dasd_device {TYPE_1__* block; } ;
struct TYPE_2__ {scalar_t__ request_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_STOPPED_PENDING ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct dasd_device*) ; 

void FUNC5(struct dasd_device *device)
{
	/* First of all start sense subsystem status request. */
	FUNC2(device);

	FUNC1(device, DASD_STOPPED_PENDING);
	FUNC4(device);
	if (device->block) {
		FUNC3(device->block);
		if (device->block->request_queue)
			FUNC0(device->block->request_queue,
					     true);
	}
}