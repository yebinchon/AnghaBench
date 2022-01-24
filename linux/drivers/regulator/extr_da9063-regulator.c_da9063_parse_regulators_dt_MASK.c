#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_4__* parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_regulator_match {scalar_t__ init_data; } ;
struct device_node {int dummy; } ;
struct da9063_regulators_pdata {int n_regulators; struct da9063_regulator_data* regulator_data; } ;
struct da9063_regulator_data {int id; scalar_t__ initdata; } ;
struct da9063 {scalar_t__ type; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int FUNC0 (struct of_regulator_match*) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct da9063_regulators_pdata* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PMIC_TYPE_DA9063L ; 
 struct of_regulator_match* da9063_matches ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 struct da9063* FUNC3 (TYPE_4__*) ; 
 struct da9063_regulator_data* FUNC4 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 struct da9063_regulators_pdata* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 int FUNC8 (TYPE_1__*,struct device_node*,struct of_regulator_match*,int) ; 

__attribute__((used)) static struct da9063_regulators_pdata *FUNC9(
		struct platform_device *pdev,
		struct of_regulator_match **da9063_reg_matches)
{
	struct da9063 *da9063 = FUNC3(pdev->dev.parent);
	struct da9063_regulators_pdata *pdata;
	struct da9063_regulator_data *rdata;
	struct device_node *node;
	int da9063_matches_len = FUNC0(da9063_matches);
	int i, n, num;

	if (da9063->type == PMIC_TYPE_DA9063L)
		da9063_matches_len -= 6;

	node = FUNC6(pdev->dev.parent->of_node, "regulators");
	if (!node) {
		FUNC2(&pdev->dev, "Regulators device node not found\n");
		return FUNC1(-ENODEV);
	}

	num = FUNC8(&pdev->dev, node, da9063_matches,
				 da9063_matches_len);
	FUNC7(node);
	if (num < 0) {
		FUNC2(&pdev->dev, "Failed to match regulators\n");
		return FUNC1(-EINVAL);
	}

	pdata = FUNC5(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
	if (!pdata)
		return FUNC1(-ENOMEM);

	pdata->regulator_data = FUNC4(&pdev->dev,
					num, sizeof(*pdata->regulator_data),
					GFP_KERNEL);
	if (!pdata->regulator_data)
		return FUNC1(-ENOMEM);
	pdata->n_regulators = num;

	n = 0;
	for (i = 0; i < da9063_matches_len; i++) {
		if (!da9063_matches[i].init_data)
			continue;

		rdata = &pdata->regulator_data[n];
		rdata->id = i;
		rdata->initdata = da9063_matches[i].init_data;

		n++;
	}

	*da9063_reg_matches = da9063_matches;
	return pdata;
}