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
struct da9052_battery {int health; } ;

/* Variables and functions */
 int DA9052_BAT_LOW_CAP ; 
 int POWER_SUPPLY_HEALTH_DEAD ; 
 int POWER_SUPPLY_HEALTH_GOOD ; 
 int POWER_SUPPLY_HEALTH_OVERHEAT ; 
 int POWER_SUPPLY_HEALTH_UNKNOWN ; 
 int FUNC0 (struct da9052_battery*,int*) ; 
 int FUNC1 (struct da9052_battery*,int*) ; 

__attribute__((used)) static int FUNC2(struct da9052_battery *bat, int *health)
{
	int ret;
	int bat_illegal;
	int capacity;

	ret = FUNC0(bat, &bat_illegal);
	if (ret < 0)
		return ret;

	if (bat_illegal) {
		bat->health = POWER_SUPPLY_HEALTH_UNKNOWN;
		return 0;
	}

	if (bat->health != POWER_SUPPLY_HEALTH_OVERHEAT) {
		ret = FUNC1(bat, &capacity);
		if (ret < 0)
			return ret;
		if (capacity < DA9052_BAT_LOW_CAP)
			bat->health = POWER_SUPPLY_HEALTH_DEAD;
		else
			bat->health = POWER_SUPPLY_HEALTH_GOOD;
	}

	*health = bat->health;

	return 0;
}