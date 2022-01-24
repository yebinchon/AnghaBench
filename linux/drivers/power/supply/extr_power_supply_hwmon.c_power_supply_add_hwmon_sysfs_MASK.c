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
struct power_supply_hwmon {int /*<<< orphan*/  props; struct power_supply* psy; } ;
struct power_supply_desc {int num_properties; int* properties; char* name; } ;
struct device {int dummy; } ;
struct power_supply {struct power_supply_desc* desc; struct device dev; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  POWER_SUPPLY_PROP_CURRENT_AVG 142 
#define  POWER_SUPPLY_PROP_CURRENT_MAX 141 
#define  POWER_SUPPLY_PROP_CURRENT_NOW 140 
#define  POWER_SUPPLY_PROP_TEMP 139 
#define  POWER_SUPPLY_PROP_TEMP_ALERT_MAX 138 
#define  POWER_SUPPLY_PROP_TEMP_ALERT_MIN 137 
#define  POWER_SUPPLY_PROP_TEMP_AMBIENT 136 
#define  POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MAX 135 
#define  POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MIN 134 
#define  POWER_SUPPLY_PROP_TEMP_MAX 133 
#define  POWER_SUPPLY_PROP_TEMP_MIN 132 
 scalar_t__ POWER_SUPPLY_PROP_TIME_TO_FULL_AVG ; 
#define  POWER_SUPPLY_PROP_VOLTAGE_AVG 131 
#define  POWER_SUPPLY_PROP_VOLTAGE_MAX 130 
#define  POWER_SUPPLY_PROP_VOLTAGE_MIN 129 
#define  POWER_SUPPLY_PROP_VOLTAGE_NOW 128 
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct device* FUNC3 (struct device*,char const*,struct power_supply_hwmon*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (struct device*,char const*,int /*<<< orphan*/ ) ; 
 struct power_supply_hwmon* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int (*) (struct power_supply*)) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int (*) (struct power_supply*),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  power_supply_hwmon_bitmap_free ; 
 int /*<<< orphan*/  power_supply_hwmon_chip_info ; 
 int /*<<< orphan*/  FUNC9 (int const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char const*,char) ; 
 int /*<<< orphan*/  FUNC11 (char*,char,char) ; 

int FUNC12(struct power_supply *psy)
{
	const struct power_supply_desc *desc = psy->desc;
	struct power_supply_hwmon *psyhw;
	struct device *dev = &psy->dev;
	struct device *hwmon;
	int ret, i;
	const char *name;

	if (!FUNC7(dev, power_supply_add_hwmon_sysfs,
			       GFP_KERNEL))
		return -ENOMEM;

	psyhw = FUNC5(dev, sizeof(*psyhw), GFP_KERNEL);
	if (!psyhw) {
		ret = -ENOMEM;
		goto error;
	}

	psyhw->psy = psy;
	psyhw->props = FUNC1(POWER_SUPPLY_PROP_TIME_TO_FULL_AVG + 1,
				     GFP_KERNEL);
	if (!psyhw->props) {
		ret = -ENOMEM;
		goto error;
	}

	ret = FUNC2(dev, power_supply_hwmon_bitmap_free,
			      psyhw->props);
	if (ret)
		goto error;

	for (i = 0; i < desc->num_properties; i++) {
		const enum power_supply_property prop = desc->properties[i];

		switch (prop) {
		case POWER_SUPPLY_PROP_CURRENT_AVG:
		case POWER_SUPPLY_PROP_CURRENT_MAX:
		case POWER_SUPPLY_PROP_CURRENT_NOW:
		case POWER_SUPPLY_PROP_TEMP:
		case POWER_SUPPLY_PROP_TEMP_MAX:
		case POWER_SUPPLY_PROP_TEMP_MIN:
		case POWER_SUPPLY_PROP_TEMP_ALERT_MIN:
		case POWER_SUPPLY_PROP_TEMP_ALERT_MAX:
		case POWER_SUPPLY_PROP_TEMP_AMBIENT:
		case POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MIN:
		case POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MAX:
		case POWER_SUPPLY_PROP_VOLTAGE_AVG:
		case POWER_SUPPLY_PROP_VOLTAGE_MIN:
		case POWER_SUPPLY_PROP_VOLTAGE_MAX:
		case POWER_SUPPLY_PROP_VOLTAGE_NOW:
			FUNC9(prop, psyhw->props);
			break;
		default:
			break;
		}
	}

	name = psy->desc->name;
	if (FUNC10(name, '-')) {
		char *new_name;

		new_name = FUNC4(dev, name, GFP_KERNEL);
		if (!new_name) {
			ret = -ENOMEM;
			goto error;
		}
		FUNC11(new_name, '-', '_');
		name = new_name;
	}
	hwmon = FUNC3(dev, name,
						psyhw,
						&power_supply_hwmon_chip_info,
						NULL);
	ret = FUNC0(hwmon);
	if (ret)
		goto error;

	FUNC6(dev, power_supply_add_hwmon_sysfs);
	return 0;
error:
	FUNC8(dev, NULL);
	return ret;
}