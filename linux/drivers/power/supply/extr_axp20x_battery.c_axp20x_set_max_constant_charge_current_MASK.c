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
struct axp20x_batt_ps {int max_ccc; int /*<<< orphan*/  dev; TYPE_1__* data; } ;
struct TYPE_2__ {int ccc_offset; int ccc_scale; } ;

/* Variables and functions */
 int AXP20X_CHRG_CTRL1_TGT_CURR ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct axp20x_batt_ps*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct axp20x_batt_ps*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct axp20x_batt_ps *axp,
						  int charge_current)
{
	bool lower_max = false;

	charge_current = (charge_current - axp->data->ccc_offset) /
		axp->data->ccc_scale;

	if (charge_current > AXP20X_CHRG_CTRL1_TGT_CURR || charge_current < 0)
		return -EINVAL;

	charge_current = charge_current * axp->data->ccc_scale +
		axp->data->ccc_offset;

	if (charge_current > axp->max_ccc)
		FUNC2(axp->dev,
			 "Setting max constant charge current higher than previously defined. Note that increasing the constant charge current may damage your battery.\n");
	else
		lower_max = true;

	axp->max_ccc = charge_current;

	if (lower_max) {
		int current_cc;

		FUNC0(axp, &current_cc);
		if (current_cc > charge_current)
			FUNC1(axp, charge_current);
	}

	return 0;
}