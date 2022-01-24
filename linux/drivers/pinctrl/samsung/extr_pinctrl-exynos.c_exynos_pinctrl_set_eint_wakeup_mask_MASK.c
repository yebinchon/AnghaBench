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
struct samsung_pinctrl_drv_data {int /*<<< orphan*/  dev; TYPE_1__* retention_ctrl; } ;
struct regmap {int dummy; } ;
struct exynos_irq_chip {int /*<<< orphan*/  eint_wake_mask_value; int /*<<< orphan*/  eint_wake_mask_reg; } ;
struct TYPE_2__ {struct regmap* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct samsung_pinctrl_drv_data *drvdata,
				    struct exynos_irq_chip *irq_chip)
{
	struct regmap *pmu_regs;

	if (!drvdata->retention_ctrl || !drvdata->retention_ctrl->priv) {
		FUNC1(drvdata->dev,
			 "No retention data configured bank with external wakeup interrupt. Wake-up mask will not be set.\n");
		return;
	}

	pmu_regs = drvdata->retention_ctrl->priv;
	FUNC0(drvdata->dev,
		 "Setting external wakeup interrupt mask: 0x%x\n",
		 irq_chip->eint_wake_mask_value);

	FUNC2(pmu_regs, irq_chip->eint_wake_mask_reg,
		     irq_chip->eint_wake_mask_value);
}