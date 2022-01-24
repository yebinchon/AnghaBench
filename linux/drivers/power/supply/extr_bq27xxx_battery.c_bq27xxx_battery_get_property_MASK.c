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
union power_supply_propval {int intval; int /*<<< orphan*/  strval; } ;
struct power_supply {int dummy; } ;
struct TYPE_3__ {scalar_t__ flags; int /*<<< orphan*/  health; int /*<<< orphan*/  power_avg; int /*<<< orphan*/  energy; int /*<<< orphan*/  cycle_count; int /*<<< orphan*/  charge_full; int /*<<< orphan*/  time_to_full; int /*<<< orphan*/  time_to_empty_avg; int /*<<< orphan*/  time_to_empty; int /*<<< orphan*/  temperature; int /*<<< orphan*/  capacity; } ;
struct TYPE_4__ {int /*<<< orphan*/  work; } ;
struct bq27xxx_device_info {TYPE_1__ cache; int /*<<< orphan*/  charge_design_full; int /*<<< orphan*/  lock; TYPE_2__ work; scalar_t__ last_update; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int /*<<< orphan*/  BQ27XXX_MANUFACTURER ; 
 int EINVAL ; 
 int ENODEV ; 
 int HZ ; 
#define  POWER_SUPPLY_PROP_CAPACITY 148 
#define  POWER_SUPPLY_PROP_CAPACITY_LEVEL 147 
#define  POWER_SUPPLY_PROP_CHARGE_FULL 146 
#define  POWER_SUPPLY_PROP_CHARGE_FULL_DESIGN 145 
#define  POWER_SUPPLY_PROP_CHARGE_NOW 144 
#define  POWER_SUPPLY_PROP_CURRENT_NOW 143 
#define  POWER_SUPPLY_PROP_CYCLE_COUNT 142 
#define  POWER_SUPPLY_PROP_ENERGY_FULL_DESIGN 141 
#define  POWER_SUPPLY_PROP_ENERGY_NOW 140 
#define  POWER_SUPPLY_PROP_HEALTH 139 
#define  POWER_SUPPLY_PROP_MANUFACTURER 138 
#define  POWER_SUPPLY_PROP_POWER_AVG 137 
#define  POWER_SUPPLY_PROP_PRESENT 136 
#define  POWER_SUPPLY_PROP_STATUS 135 
#define  POWER_SUPPLY_PROP_TECHNOLOGY 134 
#define  POWER_SUPPLY_PROP_TEMP 133 
#define  POWER_SUPPLY_PROP_TIME_TO_EMPTY_AVG 132 
#define  POWER_SUPPLY_PROP_TIME_TO_EMPTY_NOW 131 
#define  POWER_SUPPLY_PROP_TIME_TO_FULL_NOW 130 
#define  POWER_SUPPLY_PROP_VOLTAGE_MIN_DESIGN 129 
#define  POWER_SUPPLY_PROP_VOLTAGE_NOW 128 
 int POWER_SUPPLY_TECHNOLOGY_LION ; 
 int FUNC0 (struct bq27xxx_device_info*,union power_supply_propval*) ; 
 int FUNC1 (struct bq27xxx_device_info*,union power_supply_propval*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bq27xxx_device_info*) ; 
 int FUNC4 (struct bq27xxx_device_info*,union power_supply_propval*) ; 
 int FUNC5 (struct bq27xxx_device_info*,union power_supply_propval*) ; 
 int FUNC6 (int /*<<< orphan*/ ,union power_supply_propval*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct bq27xxx_device_info* FUNC10 (struct power_supply*) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct power_supply *psy,
					enum power_supply_property psp,
					union power_supply_propval *val)
{
	int ret = 0;
	struct bq27xxx_device_info *di = FUNC10(psy);

	FUNC8(&di->lock);
	if (FUNC11(di->last_update + 5 * HZ)) {
		FUNC7(&di->work);
		FUNC2(&di->work.work);
	}
	FUNC9(&di->lock);

	if (psp != POWER_SUPPLY_PROP_PRESENT && di->cache.flags < 0)
		return -ENODEV;

	switch (psp) {
	case POWER_SUPPLY_PROP_STATUS:
		ret = FUNC4(di, val);
		break;
	case POWER_SUPPLY_PROP_VOLTAGE_NOW:
		ret = FUNC5(di, val);
		break;
	case POWER_SUPPLY_PROP_PRESENT:
		val->intval = di->cache.flags < 0 ? 0 : 1;
		break;
	case POWER_SUPPLY_PROP_CURRENT_NOW:
		ret = FUNC1(di, val);
		break;
	case POWER_SUPPLY_PROP_CAPACITY:
		ret = FUNC6(di->cache.capacity, val);
		break;
	case POWER_SUPPLY_PROP_CAPACITY_LEVEL:
		ret = FUNC0(di, val);
		break;
	case POWER_SUPPLY_PROP_TEMP:
		ret = FUNC6(di->cache.temperature, val);
		if (ret == 0)
			val->intval -= 2731; /* convert decidegree k to c */
		break;
	case POWER_SUPPLY_PROP_TIME_TO_EMPTY_NOW:
		ret = FUNC6(di->cache.time_to_empty, val);
		break;
	case POWER_SUPPLY_PROP_TIME_TO_EMPTY_AVG:
		ret = FUNC6(di->cache.time_to_empty_avg, val);
		break;
	case POWER_SUPPLY_PROP_TIME_TO_FULL_NOW:
		ret = FUNC6(di->cache.time_to_full, val);
		break;
	case POWER_SUPPLY_PROP_TECHNOLOGY:
		val->intval = POWER_SUPPLY_TECHNOLOGY_LION;
		break;
	case POWER_SUPPLY_PROP_CHARGE_NOW:
		ret = FUNC6(FUNC3(di), val);
		break;
	case POWER_SUPPLY_PROP_CHARGE_FULL:
		ret = FUNC6(di->cache.charge_full, val);
		break;
	case POWER_SUPPLY_PROP_CHARGE_FULL_DESIGN:
		ret = FUNC6(di->charge_design_full, val);
		break;
	/*
	 * TODO: Implement these to make registers set from
	 * power_supply_battery_info visible in sysfs.
	 */
	case POWER_SUPPLY_PROP_ENERGY_FULL_DESIGN:
	case POWER_SUPPLY_PROP_VOLTAGE_MIN_DESIGN:
		return -EINVAL;
	case POWER_SUPPLY_PROP_CYCLE_COUNT:
		ret = FUNC6(di->cache.cycle_count, val);
		break;
	case POWER_SUPPLY_PROP_ENERGY_NOW:
		ret = FUNC6(di->cache.energy, val);
		break;
	case POWER_SUPPLY_PROP_POWER_AVG:
		ret = FUNC6(di->cache.power_avg, val);
		break;
	case POWER_SUPPLY_PROP_HEALTH:
		ret = FUNC6(di->cache.health, val);
		break;
	case POWER_SUPPLY_PROP_MANUFACTURER:
		val->strval = BQ27XXX_MANUFACTURER;
		break;
	default:
		return -EINVAL;
	}

	return ret;
}