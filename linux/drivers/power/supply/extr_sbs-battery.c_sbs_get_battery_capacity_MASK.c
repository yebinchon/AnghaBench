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
union power_supply_propval {scalar_t__ intval; } ;
struct i2c_client {int dummy; } ;
typedef  scalar_t__ s32 ;
typedef  enum sbs_battery_mode { ____Placeholder_sbs_battery_mode } sbs_battery_mode ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int BATTERY_MODE_AMPS ; 
 int BATTERY_MODE_WATTS ; 
 scalar_t__ FUNC0 (int) ; 
 TYPE_1__* sbs_data ; 
 scalar_t__ FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct i2c_client*,int) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client,
	int reg_offset, enum power_supply_property psp,
	union power_supply_propval *val)
{
	s32 ret;
	enum sbs_battery_mode mode = BATTERY_MODE_WATTS;

	if (FUNC0(psp))
		mode = BATTERY_MODE_AMPS;

	mode = FUNC2(client, mode);
	if (mode < 0)
		return mode;

	ret = FUNC1(client, sbs_data[reg_offset].addr);
	if (ret < 0)
		return ret;

	val->intval = ret;

	ret = FUNC2(client, mode);
	if (ret < 0)
		return ret;

	return 0;
}