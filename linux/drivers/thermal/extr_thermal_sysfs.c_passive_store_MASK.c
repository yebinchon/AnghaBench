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
struct thermal_zone_device {int forced_passive; int passive_delay; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  THERMAL_EVENT_UNSPECIFIED ; 
 int FUNC0 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct thermal_zone_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct thermal_zone_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct thermal_zone_device*,int /*<<< orphan*/ ) ; 
 struct thermal_zone_device* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev, struct device_attribute *attr,
	      const char *buf, size_t count)
{
	struct thermal_zone_device *tz = FUNC4(dev);
	int state;

	if (FUNC0(buf, "%d\n", &state) != 1)
		return -EINVAL;

	/* sanity check: values below 1000 millicelcius don't make sense
	 * and can cause the system to go into a thermal heart attack
	 */
	if (state && state < 1000)
		return -EINVAL;

	if (state && !tz->forced_passive) {
		if (!tz->passive_delay)
			tz->passive_delay = 1000;
		FUNC1(tz, "Processor",
						     sizeof("Processor"));
	} else if (!state && tz->forced_passive) {
		tz->passive_delay = 0;
		FUNC2(tz, "Processor",
						     sizeof("Processor"));
	}

	tz->forced_passive = state;

	FUNC3(tz, THERMAL_EVENT_UNSPECIFIED);

	return count;
}