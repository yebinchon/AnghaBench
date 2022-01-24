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
struct dasd_device {TYPE_2__* base_discipline; TYPE_1__* discipline; } ;
struct TYPE_4__ {int /*<<< orphan*/  owner; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  (* uncheck_device ) (struct dasd_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*) ; 

void FUNC2(struct dasd_device *device)
{
	/* Forget the discipline information. */
	if (device->discipline) {
		if (device->discipline->uncheck_device)
			device->discipline->uncheck_device(device);
		FUNC0(device->discipline->owner);
		device->discipline = NULL;
	}
	if (device->base_discipline) {
		FUNC0(device->base_discipline->owner);
		device->base_discipline = NULL;
	}
}