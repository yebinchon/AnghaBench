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
struct thermal_zone_device {TYPE_1__* ops; int /*<<< orphan*/  trips_disabled; } ;
typedef  enum thermal_trip_type { ____Placeholder_thermal_trip_type } thermal_trip_type ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_trip_type ) (struct thermal_zone_device*,int,int*) ;} ;

/* Variables and functions */
 int THERMAL_TRIP_CRITICAL ; 
 int THERMAL_TRIP_HOT ; 
 int /*<<< orphan*/  FUNC0 (struct thermal_zone_device*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct thermal_zone_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct thermal_zone_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct thermal_zone_device*,int,int*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct thermal_zone_device *tz, int trip)
{
	enum thermal_trip_type type;

	/* Ignore disabled trip points */
	if (FUNC4(trip, &tz->trips_disabled))
		return;

	tz->ops->get_trip_type(tz, trip, &type);

	if (type == THERMAL_TRIP_CRITICAL || type == THERMAL_TRIP_HOT)
		FUNC0(tz, trip, type);
	else
		FUNC1(tz, trip);
	/*
	 * Alright, we handled this trip successfully.
	 * So, start monitoring again.
	 */
	FUNC2(tz);
}