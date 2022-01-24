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
struct thermal_zone_device {int trips; } ;
struct thermal_cooling_device {int dummy; } ;

/* Variables and functions */
 unsigned long THERMAL_NO_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (struct thermal_zone_device*,struct thermal_cooling_device*,int) ; 
 int FUNC1 (struct thermal_zone_device*,int,struct thermal_cooling_device*,unsigned long,unsigned long,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct thermal_zone_device *tz, int mask,
		   struct thermal_cooling_device *cdev,
		   unsigned long *limits,
		   unsigned int weight)
{
	int i, ret;

	for (i = 0; i < tz->trips; i++) {
		if (mask & (1 << i)) {
			unsigned long upper, lower;

			upper = THERMAL_NO_LIMIT;
			lower = THERMAL_NO_LIMIT;
			if (limits) {
				lower = limits[i * 2];
				upper = limits[i * 2 + 1];
			}
			ret = FUNC1(tz, i, cdev,
							       upper, lower,
							       weight);
			if (ret)
				FUNC0(tz, cdev, ret);
		}
	}
}