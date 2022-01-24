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
union power_supply_propval {int intval; } ;
typedef  int u32 ;
struct regmap {int dummy; } ;
struct power_supply {int dummy; } ;
struct max17042_chip {struct regmap* regmap; } ;
typedef  int int8_t ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MAX17042_TALRT_Th ; 
#define  POWER_SUPPLY_PROP_TEMP_ALERT_MAX 129 
#define  POWER_SUPPLY_PROP_TEMP_ALERT_MIN 128 
 struct max17042_chip* FUNC0 (struct power_supply*) ; 
 int FUNC1 (struct regmap*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct regmap*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct power_supply *psy,
			    enum power_supply_property psp,
			    const union power_supply_propval *val)
{
	struct max17042_chip *chip = FUNC0(psy);
	struct regmap *map = chip->regmap;
	int ret = 0;
	u32 data;
	int8_t temp;

	switch (psp) {
	case POWER_SUPPLY_PROP_TEMP_ALERT_MIN:
		ret = FUNC1(map, MAX17042_TALRT_Th, &data);
		if (ret < 0)
			return ret;

		/* Input in deci-centigrade, convert to centigrade */
		temp = val->intval / 10;
		/* force min < max */
		if (temp >= (int8_t)(data >> 8))
			temp = (int8_t)(data >> 8) - 1;
		/* Write both MAX and MIN ALERT */
		data = (data & 0xff00) + temp;
		ret = FUNC2(map, MAX17042_TALRT_Th, data);
		break;
	case POWER_SUPPLY_PROP_TEMP_ALERT_MAX:
		ret = FUNC1(map, MAX17042_TALRT_Th, &data);
		if (ret < 0)
			return ret;

		/* Input in Deci-Centigrade, convert to centigrade */
		temp = val->intval / 10;
		/* force max > min */
		if (temp <= (int8_t)(data & 0xff))
			temp = (int8_t)(data & 0xff) + 1;
		/* Write both MAX and MIN ALERT */
		data = (data & 0xff) + (temp << 8);
		ret = FUNC2(map, MAX17042_TALRT_Th, data);
		break;
	default:
		ret = -EINVAL;
	}

	return ret;
}