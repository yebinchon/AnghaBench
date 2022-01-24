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
struct TYPE_2__ {struct z2_charger* properties; } ;
struct z2_charger {TYPE_1__ batt_ps_desc; int /*<<< orphan*/  batt_ps; int /*<<< orphan*/  bat_work; struct z2_battery_info* info; } ;
struct z2_battery_info {scalar_t__ charge_gpio; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct z2_charger*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct z2_charger* FUNC5 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC6 (struct z2_charger*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client)
{
	struct z2_charger *charger = FUNC5(client);
	struct z2_battery_info *info = charger->info;

	FUNC0(&charger->bat_work);
	FUNC7(charger->batt_ps);

	FUNC6(charger->batt_ps_desc.properties);
	if (info->charge_gpio >= 0 && FUNC3(info->charge_gpio)) {
		FUNC1(FUNC4(info->charge_gpio), charger);
		FUNC2(info->charge_gpio);
	}

	FUNC6(charger);

	return 0;
}