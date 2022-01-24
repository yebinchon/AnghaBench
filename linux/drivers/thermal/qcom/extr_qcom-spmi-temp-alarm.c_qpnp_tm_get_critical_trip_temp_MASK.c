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
struct thermal_trip {scalar_t__ type; int temperature; } ;
struct qpnp_tm_chip {int /*<<< orphan*/  tz_dev; } ;

/* Variables and functions */
 int THERMAL_TEMP_INVALID ; 
 scalar_t__ THERMAL_TRIP_CRITICAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct thermal_trip* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct qpnp_tm_chip *chip)
{
	int ntrips;
	const struct thermal_trip *trips;
	int i;

	ntrips = FUNC0(chip->tz_dev);
	if (ntrips <= 0)
		return THERMAL_TEMP_INVALID;

	trips = FUNC1(chip->tz_dev);
	if (!trips)
		return THERMAL_TEMP_INVALID;

	for (i = 0; i < ntrips; i++) {
		if (FUNC2(chip->tz_dev, i) &&
		    trips[i].type == THERMAL_TRIP_CRITICAL)
			return trips[i].temperature;
	}

	return THERMAL_TEMP_INVALID;
}