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
struct device_driver {int dummy; } ;
struct xenbus_driver {struct device_driver driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct device_driver*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device_driver*) ; 
 scalar_t__ FUNC2 (struct device_driver*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  print_device_status ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  ready_to_wait_for_devices ; 
 scalar_t__ FUNC4 (unsigned long,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__ xenbus_frontend ; 

__attribute__((used)) static void FUNC6(struct xenbus_driver *xendrv)
{
	unsigned long start = jiffies;
	struct device_driver *drv = xendrv ? &xendrv->driver : NULL;
	unsigned int seconds_waited = 0;

	if (!ready_to_wait_for_devices || !FUNC5())
		return;

	while (FUNC2(drv))
		if (FUNC4(start, 30, &seconds_waited))
			break;

	/* Skips PVKB and PVFB check.*/
	while (FUNC1(drv))
		if (FUNC4(start, 270, &seconds_waited))
			break;

	if (seconds_waited)
		FUNC3("\n");

	FUNC0(&xenbus_frontend.bus, NULL, drv,
			 print_device_status);
}