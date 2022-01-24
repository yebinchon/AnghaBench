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
union power_supply_propval {long intval; } ;
typedef  int /*<<< orphan*/  u32 ;
struct power_supply_hwmon {struct power_supply* psy; } ;
struct power_supply {int dummy; } ;
struct device {int dummy; } ;
typedef  enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;

/* Variables and functions */
 long FUNC0 (long,int) ; 
 int EINVAL ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  FUNC1 (long,int,long*) ; 
 struct power_supply_hwmon* FUNC2 (struct device*) ; 
#define  hwmon_curr 130 
#define  hwmon_in 129 
#define  hwmon_temp 128 
 int FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct power_supply*,int,union power_supply_propval*) ; 

__attribute__((used)) static int
FUNC5(struct device *dev, enum hwmon_sensor_types type,
			 u32 attr, int channel, long val)
{
	struct power_supply_hwmon *psyhw = FUNC2(dev);
	struct power_supply *psy = psyhw->psy;
	union power_supply_propval pspval;
	int prop;

	prop = FUNC3(type, attr, channel);
	if (prop < 0)
		return prop;

	pspval.intval = val;

	switch (type) {
	/*
	 * Both voltage and current is reported in units of
	 * microvolts/microamps, so we need to adjust it to
	 * milliamps(volts)
	 */
	case hwmon_curr:
	case hwmon_in:
		if (FUNC1(pspval.intval, 1000,
				       &pspval.intval))
			return -EOVERFLOW;
		break;
	/*
	 * Temp needs to be converted from 1/10 C to milli-C
	 */
	case hwmon_temp:
		pspval.intval = FUNC0(pspval.intval, 100);
		break;
	default:
		return -EINVAL;
	}

	return FUNC4(psy, prop, &pspval);
}