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
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct thermal_zone_device {int type; int temperature; int notify_event; int /*<<< orphan*/  lock; TYPE_1__ device; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct thermal_zone_device *tz, int trip)
{
	char *thermal_prop[5];
	int i;

	FUNC3(&tz->lock);
	thermal_prop[0] = FUNC0(GFP_KERNEL, "NAME=%s", tz->type);
	thermal_prop[1] = FUNC0(GFP_KERNEL, "TEMP=%d", tz->temperature);
	thermal_prop[2] = FUNC0(GFP_KERNEL, "TRIP=%d", trip);
	thermal_prop[3] = FUNC0(GFP_KERNEL, "EVENT=%d", tz->notify_event);
	thermal_prop[4] = NULL;
	FUNC2(&tz->device.kobj, KOBJ_CHANGE, thermal_prop);
	for (i = 0; i < 4; ++i)
		FUNC1(thermal_prop[i]);
	FUNC4(&tz->lock);
	return 0;
}