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
struct rt5033_battery {int /*<<< orphan*/  regmap; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int RT5033_FUEL_BAT_PRESENT ; 
 int /*<<< orphan*/  RT5033_FUEL_REG_CONFIG_L ; 
 struct rt5033_battery* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client)
{
	struct rt5033_battery *battery = FUNC0(client);
	u32 val;

	FUNC1(battery->regmap, RT5033_FUEL_REG_CONFIG_L, &val);

	return (val & RT5033_FUEL_BAT_PRESENT) ? true : false;
}