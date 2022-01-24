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
struct TYPE_2__ {int /*<<< orphan*/  groups; } ;
struct thermal_zone_device {TYPE_1__ device; scalar_t__ trips; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thermal_zone_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct thermal_zone_device *tz)
{
	if (!tz)
		return;

	if (tz->trips)
		FUNC0(tz);

	FUNC1(tz->device.groups);
}