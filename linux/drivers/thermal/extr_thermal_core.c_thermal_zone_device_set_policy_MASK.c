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
struct thermal_zone_device {int /*<<< orphan*/  lock; } ;
struct thermal_governor {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct thermal_governor* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  thermal_governor_lock ; 
 int FUNC4 (struct thermal_zone_device*,struct thermal_governor*) ; 

int FUNC5(struct thermal_zone_device *tz,
				   char *policy)
{
	struct thermal_governor *gov;
	int ret = -EINVAL;

	FUNC1(&thermal_governor_lock);
	FUNC1(&tz->lock);

	gov = FUNC0(FUNC3(policy));
	if (!gov)
		goto exit;

	ret = FUNC4(tz, gov);

exit:
	FUNC2(&tz->lock);
	FUNC2(&thermal_governor_lock);

	return ret;
}