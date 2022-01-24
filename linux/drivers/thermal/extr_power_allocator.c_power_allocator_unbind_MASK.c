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
struct thermal_zone_device {struct power_allocator_params* governor_data; struct power_allocator_params* tzp; int /*<<< orphan*/  id; int /*<<< orphan*/  device; } ;
struct power_allocator_params {scalar_t__ allocated_tzp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct power_allocator_params*) ; 

__attribute__((used)) static void FUNC2(struct thermal_zone_device *tz)
{
	struct power_allocator_params *params = tz->governor_data;

	FUNC0(&tz->device, "Unbinding from thermal zone %d\n", tz->id);

	if (params->allocated_tzp) {
		FUNC1(tz->tzp);
		tz->tzp = NULL;
	}

	FUNC1(tz->governor_data);
	tz->governor_data = NULL;
}