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
struct axp20x_batt_ps {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXP20X_V_OFF ; 
 int AXP20X_V_OFF_MASK ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC1(struct axp20x_batt_ps *axp_batt,
					 int min_voltage)
{
	int val1 = (min_voltage - 2600000) / 100000;

	if (val1 < 0 || val1 > AXP20X_V_OFF_MASK)
		return -EINVAL;

	return FUNC0(axp_batt->regmap, AXP20X_V_OFF,
				  AXP20X_V_OFF_MASK, val1);
}