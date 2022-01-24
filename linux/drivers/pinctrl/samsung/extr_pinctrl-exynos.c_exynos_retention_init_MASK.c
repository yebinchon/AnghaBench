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
struct samsung_retention_data {int nr_regs; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  value; int /*<<< orphan*/ * regs; } ;
struct samsung_retention_ctrl {int nr_regs; int /*<<< orphan*/  value; int /*<<< orphan*/ * regs; int /*<<< orphan*/  disable; int /*<<< orphan*/  enable; int /*<<< orphan*/  refcnt; struct regmap* priv; } ;
struct samsung_pinctrl_drv_data {int /*<<< orphan*/  dev; } ;
struct regmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct samsung_retention_ctrl* FUNC0 (struct regmap*) ; 
 struct samsung_retention_ctrl* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct regmap*) ; 
 struct samsung_retention_ctrl* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC4 () ; 
 int /*<<< orphan*/  exynos_retention_disable ; 
 int /*<<< orphan*/  exynos_retention_enable ; 
 int /*<<< orphan*/  FUNC5 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct samsung_retention_ctrl *
FUNC6(struct samsung_pinctrl_drv_data *drvdata,
		      const struct samsung_retention_data *data)
{
	struct samsung_retention_ctrl *ctrl;
	struct regmap *pmu_regs;
	int i;

	ctrl = FUNC3(drvdata->dev, sizeof(*ctrl), GFP_KERNEL);
	if (!ctrl)
		return FUNC1(-ENOMEM);

	pmu_regs = FUNC4();
	if (FUNC2(pmu_regs))
		return FUNC0(pmu_regs);

	ctrl->priv = pmu_regs;
	ctrl->regs = data->regs;
	ctrl->nr_regs = data->nr_regs;
	ctrl->value = data->value;
	ctrl->refcnt = data->refcnt;
	ctrl->enable = exynos_retention_enable;
	ctrl->disable = exynos_retention_disable;

	/* Ensure that retention is disabled on driver init */
	for (i = 0; i < ctrl->nr_regs; i++)
		FUNC5(pmu_regs, ctrl->regs[i], ctrl->value);

	return ctrl;
}