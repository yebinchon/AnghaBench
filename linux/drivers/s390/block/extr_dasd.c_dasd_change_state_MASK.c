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
struct dasd_device {scalar_t__ state; scalar_t__ target; TYPE_2__* cdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int FUNC0 (struct dasd_device*) ; 
 int FUNC1 (struct dasd_device*) ; 
 int /*<<< orphan*/  dasd_init_waitq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct dasd_device *device)
{
	int rc;

	if (device->state == device->target)
		/* Already where we want to go today... */
		return;
	if (device->state < device->target)
		rc = FUNC1(device);
	else
		rc = FUNC0(device);
	if (rc == -EAGAIN)
		return;
	if (rc)
		device->target = device->state;

	/* let user-space know that the device status changed */
	FUNC2(&device->cdev->dev.kobj, KOBJ_CHANGE);

	if (device->state == device->target)
		FUNC3(&dasd_init_waitq);
}