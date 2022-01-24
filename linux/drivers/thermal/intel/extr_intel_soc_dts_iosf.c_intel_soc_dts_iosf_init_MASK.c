#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct intel_soc_dts_sensors {int intr_type; TYPE_1__* soc_dts; int /*<<< orphan*/  tj_max; int /*<<< orphan*/  dts_update_lock; int /*<<< orphan*/  intr_notify_lock; } ;
typedef  enum intel_soc_dts_interrupt_type { ____Placeholder_intel_soc_dts_interrupt_type } intel_soc_dts_interrupt_type ;
struct TYPE_4__ {struct intel_soc_dts_sensors* sensors; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 struct intel_soc_dts_sensors* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INTEL_SOC_DTS_INTERRUPT_NONE ; 
 int SOC_MAX_DTS_SENSORS ; 
 int /*<<< orphan*/  THERMAL_TRIP_PASSIVE ; 
 int FUNC1 (int,TYPE_1__*,int,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct intel_soc_dts_sensors*) ; 
 struct intel_soc_dts_sensors* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct intel_soc_dts_sensors *FUNC10(
	enum intel_soc_dts_interrupt_type intr_type, int trip_count,
	int read_only_trip_count)
{
	struct intel_soc_dts_sensors *sensors;
	bool notification;
	u32 tj_max;
	int ret;
	int i;

	if (!FUNC3())
		return FUNC0(-ENODEV);

	if (!trip_count || read_only_trip_count > trip_count)
		return FUNC0(-EINVAL);

	if (FUNC2(&tj_max))
		return FUNC0(-EINVAL);

	sensors = FUNC5(sizeof(*sensors), GFP_KERNEL);
	if (!sensors)
		return FUNC0(-ENOMEM);

	FUNC8(&sensors->intr_notify_lock);
	FUNC6(&sensors->dts_update_lock);
	sensors->intr_type = intr_type;
	sensors->tj_max = tj_max;
	if (intr_type == INTEL_SOC_DTS_INTERRUPT_NONE)
		notification = false;
	else
		notification = true;
	for (i = 0; i < SOC_MAX_DTS_SENSORS; ++i) {
		sensors->soc_dts[i].sensors = sensors;
		ret = FUNC1(i, &sensors->soc_dts[i],
					   notification, trip_count,
					   read_only_trip_count);
		if (ret)
			goto err_free;
	}

	for (i = 0; i < SOC_MAX_DTS_SENSORS; ++i) {
		ret = FUNC9(&sensors->soc_dts[i], 0, 0,
				       THERMAL_TRIP_PASSIVE);
		if (ret)
			goto err_remove_zone;

		ret = FUNC9(&sensors->soc_dts[i], 1, 0,
				       THERMAL_TRIP_PASSIVE);
		if (ret)
			goto err_remove_zone;
	}

	return sensors;
err_remove_zone:
	for (i = 0; i < SOC_MAX_DTS_SENSORS; ++i)
		FUNC7(&sensors->soc_dts[i]);

err_free:
	FUNC4(sensors);
	return FUNC0(ret);
}