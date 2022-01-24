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
struct da9052_battery {int /*<<< orphan*/  da9052; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9052_ADC_MAN_MUXSEL_VBAT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct da9052_battery *bat, int *volt_mV)
{
	int volt;

	volt = FUNC0(bat->da9052, DA9052_ADC_MAN_MUXSEL_VBAT);
	if (volt < 0)
		return volt;

	*volt_mV = FUNC1(volt);

	return 0;
}