#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
union power_supply_propval {int intval; } ;
typedef  void* u64 ;
typedef  int u32 ;
struct regmap {int dummy; } ;
struct power_supply {int dummy; } ;
struct max17042_chip {TYPE_1__* pdata; int /*<<< orphan*/  chip_type; int /*<<< orphan*/  init_complete; struct regmap* regmap; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {int r_sns; int temp_min; int temp_max; int /*<<< orphan*/  enable_current_sense; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  MAX17042_AvgCurrent ; 
 int /*<<< orphan*/  MAX17042_AvgVCELL ; 
 int /*<<< orphan*/  MAX17042_Current ; 
 int /*<<< orphan*/  MAX17042_Cycles ; 
 int /*<<< orphan*/  MAX17042_DesignCap ; 
 int /*<<< orphan*/  MAX17042_FullCAP ; 
 int /*<<< orphan*/  MAX17042_MinMaxVolt ; 
 int /*<<< orphan*/  MAX17042_OCVInternal ; 
 int /*<<< orphan*/  MAX17042_QH ; 
 int /*<<< orphan*/  MAX17042_RepCap ; 
 int /*<<< orphan*/  MAX17042_RepSOC ; 
 int /*<<< orphan*/  MAX17042_STATUS ; 
 int MAX17042_STATUS_BattAbsent ; 
 int /*<<< orphan*/  MAX17042_TALRT_Th ; 
 int /*<<< orphan*/  MAX17042_VCELL ; 
 int /*<<< orphan*/  MAX17042_V_empty ; 
 int /*<<< orphan*/  MAX17047_V_empty ; 
 int /*<<< orphan*/  MAXIM_DEVICE_TYPE_MAX17042 ; 
#define  POWER_SUPPLY_PROP_CAPACITY 151 
#define  POWER_SUPPLY_PROP_CHARGE_COUNTER 150 
#define  POWER_SUPPLY_PROP_CHARGE_FULL 149 
#define  POWER_SUPPLY_PROP_CHARGE_FULL_DESIGN 148 
#define  POWER_SUPPLY_PROP_CHARGE_NOW 147 
#define  POWER_SUPPLY_PROP_CURRENT_AVG 146 
#define  POWER_SUPPLY_PROP_CURRENT_NOW 145 
#define  POWER_SUPPLY_PROP_CYCLE_COUNT 144 
#define  POWER_SUPPLY_PROP_HEALTH 143 
#define  POWER_SUPPLY_PROP_PRESENT 142 
#define  POWER_SUPPLY_PROP_SCOPE 141 
#define  POWER_SUPPLY_PROP_STATUS 140 
#define  POWER_SUPPLY_PROP_TECHNOLOGY 139 
#define  POWER_SUPPLY_PROP_TEMP 138 
#define  POWER_SUPPLY_PROP_TEMP_ALERT_MAX 137 
#define  POWER_SUPPLY_PROP_TEMP_ALERT_MIN 136 
#define  POWER_SUPPLY_PROP_TEMP_MAX 135 
#define  POWER_SUPPLY_PROP_TEMP_MIN 134 
#define  POWER_SUPPLY_PROP_VOLTAGE_AVG 133 
#define  POWER_SUPPLY_PROP_VOLTAGE_MAX 132 
#define  POWER_SUPPLY_PROP_VOLTAGE_MIN 131 
#define  POWER_SUPPLY_PROP_VOLTAGE_MIN_DESIGN 130 
#define  POWER_SUPPLY_PROP_VOLTAGE_NOW 129 
#define  POWER_SUPPLY_PROP_VOLTAGE_OCV 128 
 int POWER_SUPPLY_SCOPE_SYSTEM ; 
 int POWER_SUPPLY_TECHNOLOGY_LION ; 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int FUNC1 (struct max17042_chip*,int*) ; 
 int FUNC2 (struct max17042_chip*,int*) ; 
 int FUNC3 (struct max17042_chip*,int*) ; 
 struct max17042_chip* FUNC4 (struct power_supply*) ; 
 int FUNC5 (struct regmap*,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct power_supply *psy,
			    enum power_supply_property psp,
			    union power_supply_propval *val)
{
	struct max17042_chip *chip = FUNC4(psy);
	struct regmap *map = chip->regmap;
	int ret;
	u32 data;
	u64 data64;

	if (!chip->init_complete)
		return -EAGAIN;

	switch (psp) {
	case POWER_SUPPLY_PROP_STATUS:
		ret = FUNC2(chip, &val->intval);
		if (ret < 0)
			return ret;
		break;
	case POWER_SUPPLY_PROP_PRESENT:
		ret = FUNC5(map, MAX17042_STATUS, &data);
		if (ret < 0)
			return ret;

		if (data & MAX17042_STATUS_BattAbsent)
			val->intval = 0;
		else
			val->intval = 1;
		break;
	case POWER_SUPPLY_PROP_TECHNOLOGY:
		val->intval = POWER_SUPPLY_TECHNOLOGY_LION;
		break;
	case POWER_SUPPLY_PROP_CYCLE_COUNT:
		ret = FUNC5(map, MAX17042_Cycles, &data);
		if (ret < 0)
			return ret;

		val->intval = data;
		break;
	case POWER_SUPPLY_PROP_VOLTAGE_MAX:
		ret = FUNC5(map, MAX17042_MinMaxVolt, &data);
		if (ret < 0)
			return ret;

		val->intval = data >> 8;
		val->intval *= 20000; /* Units of LSB = 20mV */
		break;
	case POWER_SUPPLY_PROP_VOLTAGE_MIN:
		ret = FUNC5(map, MAX17042_MinMaxVolt, &data);
		if (ret < 0)
			return ret;

		val->intval = (data & 0xff) * 20000; /* Units of 20mV */
		break;
	case POWER_SUPPLY_PROP_VOLTAGE_MIN_DESIGN:
		if (chip->chip_type == MAXIM_DEVICE_TYPE_MAX17042)
			ret = FUNC5(map, MAX17042_V_empty, &data);
		else
			ret = FUNC5(map, MAX17047_V_empty, &data);
		if (ret < 0)
			return ret;

		val->intval = data >> 7;
		val->intval *= 10000; /* Units of LSB = 10mV */
		break;
	case POWER_SUPPLY_PROP_VOLTAGE_NOW:
		ret = FUNC5(map, MAX17042_VCELL, &data);
		if (ret < 0)
			return ret;

		val->intval = data * 625 / 8;
		break;
	case POWER_SUPPLY_PROP_VOLTAGE_AVG:
		ret = FUNC5(map, MAX17042_AvgVCELL, &data);
		if (ret < 0)
			return ret;

		val->intval = data * 625 / 8;
		break;
	case POWER_SUPPLY_PROP_VOLTAGE_OCV:
		ret = FUNC5(map, MAX17042_OCVInternal, &data);
		if (ret < 0)
			return ret;

		val->intval = data * 625 / 8;
		break;
	case POWER_SUPPLY_PROP_CAPACITY:
		ret = FUNC5(map, MAX17042_RepSOC, &data);
		if (ret < 0)
			return ret;

		val->intval = data >> 8;
		break;
	case POWER_SUPPLY_PROP_CHARGE_FULL_DESIGN:
		ret = FUNC5(map, MAX17042_DesignCap, &data);
		if (ret < 0)
			return ret;

		data64 = data * 5000000ll;
		FUNC0(data64, chip->pdata->r_sns);
		val->intval = data64;
		break;
	case POWER_SUPPLY_PROP_CHARGE_FULL:
		ret = FUNC5(map, MAX17042_FullCAP, &data);
		if (ret < 0)
			return ret;

		data64 = data * 5000000ll;
		FUNC0(data64, chip->pdata->r_sns);
		val->intval = data64;
		break;
	case POWER_SUPPLY_PROP_CHARGE_NOW:
		ret = FUNC5(map, MAX17042_RepCap, &data);
		if (ret < 0)
			return ret;

		data64 = data * 5000000ll;
		FUNC0(data64, chip->pdata->r_sns);
		val->intval = data64;
		break;
	case POWER_SUPPLY_PROP_CHARGE_COUNTER:
		ret = FUNC5(map, MAX17042_QH, &data);
		if (ret < 0)
			return ret;

		val->intval = data * 1000 / 2;
		break;
	case POWER_SUPPLY_PROP_TEMP:
		ret = FUNC3(chip, &val->intval);
		if (ret < 0)
			return ret;
		break;
	case POWER_SUPPLY_PROP_TEMP_ALERT_MIN:
		ret = FUNC5(map, MAX17042_TALRT_Th, &data);
		if (ret < 0)
			return ret;
		/* LSB is Alert Minimum. In deci-centigrade */
		val->intval = FUNC6(data & 0xff, 7) * 10;
		break;
	case POWER_SUPPLY_PROP_TEMP_ALERT_MAX:
		ret = FUNC5(map, MAX17042_TALRT_Th, &data);
		if (ret < 0)
			return ret;
		/* MSB is Alert Maximum. In deci-centigrade */
		val->intval = FUNC6(data >> 8, 7) * 10;
		break;
	case POWER_SUPPLY_PROP_TEMP_MIN:
		val->intval = chip->pdata->temp_min;
		break;
	case POWER_SUPPLY_PROP_TEMP_MAX:
		val->intval = chip->pdata->temp_max;
		break;
	case POWER_SUPPLY_PROP_HEALTH:
		ret = FUNC1(chip, &val->intval);
		if (ret < 0)
			return ret;
		break;
	case POWER_SUPPLY_PROP_SCOPE:
		val->intval = POWER_SUPPLY_SCOPE_SYSTEM;
		break;
	case POWER_SUPPLY_PROP_CURRENT_NOW:
		if (chip->pdata->enable_current_sense) {
			ret = FUNC5(map, MAX17042_Current, &data);
			if (ret < 0)
				return ret;

			val->intval = FUNC6(data, 15);
			val->intval *= 1562500 / chip->pdata->r_sns;
		} else {
			return -EINVAL;
		}
		break;
	case POWER_SUPPLY_PROP_CURRENT_AVG:
		if (chip->pdata->enable_current_sense) {
			ret = FUNC5(map, MAX17042_AvgCurrent, &data);
			if (ret < 0)
				return ret;

			val->intval = FUNC6(data, 15);
			val->intval *= 1562500 / chip->pdata->r_sns;
		} else {
			return -EINVAL;
		}
		break;
	default:
		return -EINVAL;
	}
	return 0;
}