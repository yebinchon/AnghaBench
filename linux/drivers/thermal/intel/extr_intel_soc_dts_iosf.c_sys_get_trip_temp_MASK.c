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
struct thermal_zone_device {struct intel_soc_dts_sensor_entry* devdata; } ;
struct intel_soc_dts_sensors {int tj_max; int /*<<< orphan*/  dts_update_lock; } ;
struct intel_soc_dts_sensor_entry {struct intel_soc_dts_sensors* sensors; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_MBI_UNIT_PMC ; 
 int /*<<< orphan*/  MBI_REG_READ ; 
 int /*<<< orphan*/  SOC_DTS_OFFSET_PTPS ; 
 int SOC_DTS_TJMAX_ENCODING ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct thermal_zone_device *tzd, int trip,
			     int *temp)
{
	int status;
	u32 out;
	struct intel_soc_dts_sensor_entry *dts;
	struct intel_soc_dts_sensors *sensors;

	dts = tzd->devdata;
	sensors = dts->sensors;
	FUNC1(&sensors->dts_update_lock);
	status = FUNC0(BT_MBI_UNIT_PMC, MBI_REG_READ,
			       SOC_DTS_OFFSET_PTPS, &out);
	FUNC2(&sensors->dts_update_lock);
	if (status)
		return status;

	out = (out >> (trip * 8)) & SOC_DTS_TJMAX_ENCODING;
	if (!out)
		*temp = 0;
	else
		*temp = sensors->tj_max - out * 1000;

	return 0;
}