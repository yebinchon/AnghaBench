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
struct samsung_pmx_func {int dummy; } ;
struct samsung_pinctrl_drv_data {unsigned int nr_groups; unsigned int nr_functions; struct samsung_pmx_func* pmx_functions; struct samsung_pmx_func* pin_groups; } ;
typedef  struct samsung_pmx_func samsung_pin_group ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct samsung_pmx_func*) ; 
 int FUNC1 (struct samsung_pmx_func*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct samsung_pmx_func* FUNC3 (struct device*,struct samsung_pinctrl_drv_data*,unsigned int*) ; 
 struct samsung_pmx_func* FUNC4 (struct device*,struct samsung_pinctrl_drv_data*,unsigned int*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev,
				    struct samsung_pinctrl_drv_data *drvdata)
{
	struct device *dev = &pdev->dev;
	struct samsung_pin_group *groups;
	struct samsung_pmx_func *functions;
	unsigned int grp_cnt = 0, func_cnt = 0;

	groups = FUNC4(dev, drvdata, &grp_cnt);
	if (FUNC0(groups)) {
		FUNC2(dev, "failed to parse pin groups\n");
		return FUNC1(groups);
	}

	functions = FUNC3(dev, drvdata, &func_cnt);
	if (FUNC0(functions)) {
		FUNC2(dev, "failed to parse pin functions\n");
		return FUNC1(functions);
	}

	drvdata->pin_groups = groups;
	drvdata->nr_groups = grp_cnt;
	drvdata->pmx_functions = functions;
	drvdata->nr_functions = func_cnt;

	return 0;
}