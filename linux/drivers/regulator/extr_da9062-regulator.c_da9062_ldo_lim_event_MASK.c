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
struct da9062_regulators {int n_regulators; struct da9062_regulator* regulator; } ;
struct da9062_regulator {int /*<<< orphan*/  rdev; TYPE_2__* info; struct da9062* hw; } ;
struct da9062 {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
typedef  int irqreturn_t ;
struct TYPE_3__ {scalar_t__ reg; int /*<<< orphan*/  lsb; } ;
struct TYPE_4__ {TYPE_1__ oc_event; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DA9062AA_STATUS_D ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int /*<<< orphan*/  REGULATOR_EVENT_OVER_CURRENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct da9062_regulators *regulators = data;
	struct da9062 *hw = regulators->regulator[0].hw;
	struct da9062_regulator *regl;
	int handled = IRQ_NONE;
	int bits, i, ret;

	ret = FUNC2(hw->regmap, DA9062AA_STATUS_D, &bits);
	if (ret < 0) {
		FUNC1(hw->dev,
			"Failed to read LDO overcurrent indicator\n");
		goto ldo_lim_error;
	}

	for (i = regulators->n_regulators - 1; i >= 0; i--) {
		regl = &regulators->regulator[i];
		if (regl->info->oc_event.reg != DA9062AA_STATUS_D)
			continue;

		if (FUNC0(regl->info->oc_event.lsb) & bits) {
			FUNC3(regl->rdev);
			FUNC4(regl->rdev,
					REGULATOR_EVENT_OVER_CURRENT, NULL);
			FUNC5(regl->rdev);
			handled = IRQ_HANDLED;
		}
	}

ldo_lim_error:
	return handled;
}