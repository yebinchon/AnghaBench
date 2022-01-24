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
struct intel_soc_dts_sensors {int /*<<< orphan*/ * soc_dts; } ;

/* Variables and functions */
 int SOC_MAX_DTS_SENSORS ; 
 int /*<<< orphan*/  FUNC0 (struct intel_soc_dts_sensors*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct intel_soc_dts_sensors *sensors)
{
	int i;

	for (i = 0; i < SOC_MAX_DTS_SENSORS; ++i) {
		FUNC2(&sensors->soc_dts[i], 0, 0, 0);
		FUNC2(&sensors->soc_dts[i], 1, 0, 0);
		FUNC1(&sensors->soc_dts[i]);
	}
	FUNC0(sensors);
}