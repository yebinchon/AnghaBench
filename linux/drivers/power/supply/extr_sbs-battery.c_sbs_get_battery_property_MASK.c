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
struct sbs_info {scalar_t__ poll_time; scalar_t__ last_state; int /*<<< orphan*/  power_supply; int /*<<< orphan*/  work; } ;
struct i2c_client {int dummy; } ;
typedef  int s32 ;
typedef  int s16 ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {scalar_t__ min_value; int max_value; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int BATTERY_DISCHARGING ; 
 int BATTERY_FULL_CHARGED ; 
 int BATTERY_FULL_DISCHARGED ; 
 int BATTERY_INITIALIZED ; 
 int POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL ; 
 int POWER_SUPPLY_CAPACITY_LEVEL_FULL ; 
 int POWER_SUPPLY_CAPACITY_LEVEL_NORMAL ; 
 int POWER_SUPPLY_CAPACITY_LEVEL_UNKNOWN ; 
 int POWER_SUPPLY_PROP_CAPACITY ; 
 int POWER_SUPPLY_PROP_CAPACITY_LEVEL ; 
 int POWER_SUPPLY_PROP_STATUS ; 
 int POWER_SUPPLY_STATUS_CHARGING ; 
 int POWER_SUPPLY_STATUS_DISCHARGING ; 
 int POWER_SUPPLY_STATUS_FULL ; 
 scalar_t__ POWER_SUPPLY_STATUS_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct sbs_info* FUNC1 (struct i2c_client*) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* sbs_data ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int*) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
	int reg_offset, enum power_supply_property psp,
	union power_supply_propval *val)
{
	struct sbs_info *chip = FUNC1(client);
	s32 ret;

	ret = FUNC4(client, sbs_data[reg_offset].addr);
	if (ret < 0)
		return ret;

	/* returned values are 16 bit */
	if (sbs_data[reg_offset].min_value < 0)
		ret = (s16)ret;

	if (ret >= sbs_data[reg_offset].min_value &&
	    ret <= sbs_data[reg_offset].max_value) {
		val->intval = ret;
		if (psp == POWER_SUPPLY_PROP_CAPACITY_LEVEL) {
			if (!(ret & BATTERY_INITIALIZED))
				val->intval =
					POWER_SUPPLY_CAPACITY_LEVEL_UNKNOWN;
			else if (ret & BATTERY_FULL_CHARGED)
				val->intval =
					POWER_SUPPLY_CAPACITY_LEVEL_FULL;
			else if (ret & BATTERY_FULL_DISCHARGED)
				val->intval =
					POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL;
			else
				val->intval =
					POWER_SUPPLY_CAPACITY_LEVEL_NORMAL;
			return 0;
		} else if (psp != POWER_SUPPLY_PROP_STATUS) {
			return 0;
		}

		if (ret & BATTERY_FULL_CHARGED)
			val->intval = POWER_SUPPLY_STATUS_FULL;
		else if (ret & BATTERY_DISCHARGING)
			val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
		else
			val->intval = POWER_SUPPLY_STATUS_CHARGING;

		FUNC5(client, &val->intval);

		if (chip->poll_time == 0)
			chip->last_state = val->intval;
		else if (chip->last_state != val->intval) {
			FUNC0(&chip->work);
			FUNC3(chip->power_supply);
			chip->poll_time = 0;
		}
	} else {
		if (psp == POWER_SUPPLY_PROP_STATUS)
			val->intval = POWER_SUPPLY_STATUS_UNKNOWN;
		else if (psp == POWER_SUPPLY_PROP_CAPACITY)
			/* sbs spec says that this can be >100 %
			 * even if max value is 100 %
			 */
			val->intval = FUNC2(ret, 100);
		else
			val->intval = 0;
	}

	return 0;
}