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
typedef  int /*<<< orphan*/  u32 ;
struct thermal_zone_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVS_TMON_TEMP_MAX ; 
 int AVS_TMON_TEMP_MIN ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct thermal_zone_device*,int*,int*) ; 

__attribute__((used)) static inline u32 FUNC3(struct thermal_zone_device *tz,
					int temp, bool low)
{
	int slope, offset;

	if (temp < AVS_TMON_TEMP_MIN)
		return AVS_TMON_TEMP_MAX; /* Maximum code value */

	FUNC2(tz, &slope, &offset);

	if (temp >= offset)
		return 0;	/* Minimum code value */

	if (low)
		return (u32)(FUNC0(offset - temp, FUNC1(slope)));
	else
		return (u32)((offset - temp) / FUNC1(slope));
}