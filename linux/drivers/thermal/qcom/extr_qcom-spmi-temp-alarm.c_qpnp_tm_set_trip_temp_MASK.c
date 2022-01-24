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
struct thermal_trip {scalar_t__ type; } ;
struct qpnp_tm_chip {int /*<<< orphan*/  lock; int /*<<< orphan*/  tz_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ THERMAL_TRIP_CRITICAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct thermal_trip* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct qpnp_tm_chip*,int) ; 

__attribute__((used)) static int FUNC4(void *data, int trip, int temp)
{
	struct qpnp_tm_chip *chip = data;
	const struct thermal_trip *trip_points;
	int ret;

	trip_points = FUNC2(chip->tz_dev);
	if (!trip_points)
		return -EINVAL;

	if (trip_points[trip].type != THERMAL_TRIP_CRITICAL)
		return 0;

	FUNC0(&chip->lock);
	ret = FUNC3(chip, temp);
	FUNC1(&chip->lock);

	return ret;
}