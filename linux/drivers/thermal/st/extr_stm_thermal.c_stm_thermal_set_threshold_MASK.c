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
typedef  int u32 ;
struct stm_thermal_sensor {scalar_t__ base; int /*<<< orphan*/  low_temp; scalar_t__ low_temp_enabled; int /*<<< orphan*/  high_temp; } ;

/* Variables and functions */
 scalar_t__ DTS_ITR1_OFFSET ; 
 int TS1_HITTHD_MASK ; 
 int TS1_HITTHD_POS ; 
 int TS1_LITTHD_MASK ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (struct stm_thermal_sensor*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct stm_thermal_sensor *sensor)
{
	u32 value, th;
	int ret;

	value = FUNC0(sensor->base + DTS_ITR1_OFFSET);

	/* Erase threshold content */
	value &= ~(TS1_LITTHD_MASK | TS1_HITTHD_MASK);

	/* Retrieve the sample threshold number th for a given temperature */
	ret = FUNC1(sensor, sensor->high_temp, &th);
	if (ret)
		return ret;

	value |= th & TS1_LITTHD_MASK;

	if (sensor->low_temp_enabled) {
		/* Retrieve the sample threshold */
		ret = FUNC1(sensor, sensor->low_temp,
						      &th);
		if (ret)
			return ret;

		value |= (TS1_HITTHD_MASK  & (th << TS1_HITTHD_POS));
	}

	/* Write value on the Low interrupt threshold */
	FUNC2(value, sensor->base + DTS_ITR1_OFFSET);

	return 0;
}