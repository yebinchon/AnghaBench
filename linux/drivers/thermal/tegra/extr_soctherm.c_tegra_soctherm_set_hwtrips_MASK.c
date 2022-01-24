#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thermal_zone_device {TYPE_1__* ops; } ;
struct thermal_cooling_device {int /*<<< orphan*/  type; } ;
struct tegra_tsensor_group {int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
struct tegra_soctherm {TYPE_2__* throt_cfgs; } ;
struct soctherm_throt_cfg {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct thermal_cooling_device* cdev; int /*<<< orphan*/  init; } ;
struct TYPE_3__ {scalar_t__ (* get_crit_temp ) (struct thermal_zone_device*,int*) ;} ;

/* Variables and functions */
 int THROTTLE_OC1 ; 
 int THROTTLE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct tegra_soctherm* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,...) ; 
 struct soctherm_throt_cfg* FUNC3 (struct tegra_soctherm*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct thermal_zone_device*,int*,int*) ; 
 scalar_t__ FUNC5 (struct thermal_zone_device*,struct thermal_cooling_device*,int) ; 
 int max_high_temp ; 
 int min_low_temp ; 
 scalar_t__ FUNC6 (struct thermal_zone_device*,int*) ; 
 int FUNC7 (struct device*,struct tegra_tsensor_group const*,int) ; 
 int FUNC8 (struct device*,struct tegra_tsensor_group const*,struct soctherm_throt_cfg*,int) ; 
 int FUNC9 (struct tegra_soctherm*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct device *dev,
				      const struct tegra_tsensor_group *sg,
				      struct thermal_zone_device *tz)
{
	struct tegra_soctherm *ts = FUNC1(dev);
	struct soctherm_throt_cfg *stc;
	int i, trip, temperature, ret;

	/* Get thermtrips. If missing, try to get critical trips. */
	temperature = FUNC9(ts, sg->id);
	if (min_low_temp == temperature)
		if (tz->ops->get_crit_temp(tz, &temperature))
			temperature = max_high_temp;

	ret = FUNC7(dev, sg, temperature);
	if (ret) {
		FUNC0(dev, "thermtrip: %s: error during enable\n", sg->name);
		return ret;
	}

	FUNC2(dev, "thermtrip: will shut down when %s reaches %d mC\n",
		 sg->name, temperature);

	ret = FUNC4(tz, &trip, &temperature);
	if (ret) {
		FUNC2(dev, "throttrip: %s: missing hot temperature\n",
			 sg->name);
		return 0;
	}

	for (i = 0; i < THROTTLE_OC1; i++) {
		struct thermal_cooling_device *cdev;

		if (!ts->throt_cfgs[i].init)
			continue;

		cdev = ts->throt_cfgs[i].cdev;
		if (FUNC5(tz, cdev, trip))
			stc = FUNC3(ts, cdev->type);
		else
			continue;

		ret = FUNC8(dev, sg, stc, temperature);
		if (ret) {
			FUNC0(dev, "throttrip: %s: error during enable\n",
				sg->name);
			return ret;
		}

		FUNC2(dev,
			 "throttrip: will throttle when %s reaches %d mC\n",
			 sg->name, temperature);
		break;
	}

	if (i == THROTTLE_SIZE)
		FUNC2(dev, "throttrip: %s: missing throttle cdev\n",
			 sg->name);

	return 0;
}