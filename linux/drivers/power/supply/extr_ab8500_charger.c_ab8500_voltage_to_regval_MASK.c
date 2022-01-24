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

/* Variables and functions */
 int FUNC0 (int*) ; 
 int LOW_VOLT_REG ; 
 int* ab8500_charger_voltage_map ; 

__attribute__((used)) static int FUNC1(int voltage)
{
	int i;

	/* Special case for voltage below 3.5V */
	if (voltage < ab8500_charger_voltage_map[0])
		return LOW_VOLT_REG;

	for (i = 1; i < FUNC0(ab8500_charger_voltage_map); i++) {
		if (voltage < ab8500_charger_voltage_map[i])
			return i - 1;
	}

	/* If not last element, return error */
	i = FUNC0(ab8500_charger_voltage_map) - 1;
	if (voltage == ab8500_charger_voltage_map[i])
		return i;
	else
		return -1;
}