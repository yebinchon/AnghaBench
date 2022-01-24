#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct regulator_desc {int /*<<< orphan*/  id; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct ab3100_platform_data {int /*<<< orphan*/ * reg_initvals; } ;

/* Variables and functions */
 int /*<<< orphan*/  AB3100_LDO_D ; 
 int AB3100_NUM_REGULATORS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ab3100_reg_init_order ; 
 struct regulator_desc* ab3100_regulator_desc ; 
 int /*<<< orphan*/ * ab3100_regulator_matches ; 
 int FUNC1 (struct platform_device*,struct device_node*) ; 
 int FUNC2 (struct platform_device*,struct ab3100_platform_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,...) ; 
 struct ab3100_platform_data* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int FUNC8 (TYPE_1__*,struct device_node*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct ab3100_platform_data *plfdata = FUNC6(&pdev->dev);
	struct device_node *np = pdev->dev.of_node;
	int err = 0;
	u8 data;
	int i;

	/* Check chip state */
	err = FUNC3(&pdev->dev, 0,
						AB3100_LDO_D, &data);
	if (err) {
		FUNC5(&pdev->dev, "could not read initial status of LDO_D\n");
		return err;
	}
	if (data & 0x10)
		FUNC7(&pdev->dev,
			   "chip is already in active mode (Warm start)\n");
	else
		FUNC7(&pdev->dev,
			   "chip is in inactive mode (Cold start)\n");

	if (np) {
		err = FUNC8(&pdev->dev, np,
					 ab3100_regulator_matches,
					 FUNC0(ab3100_regulator_matches));
		if (err < 0) {
			FUNC5(&pdev->dev,
				"Error parsing regulator init data: %d\n", err);
			return err;
		}
		return FUNC1(pdev, np);
	}

	/* Set up regulators */
	for (i = 0; i < FUNC0(ab3100_reg_init_order); i++) {
		err = FUNC4(&pdev->dev, 0,
					ab3100_reg_init_order[i],
					plfdata->reg_initvals[i]);
		if (err) {
			FUNC5(&pdev->dev, "regulator initialization failed with error %d\n",
				err);
			return err;
		}
	}

	/* Register the regulators */
	for (i = 0; i < AB3100_NUM_REGULATORS; i++) {
		const struct regulator_desc *desc = &ab3100_regulator_desc[i];

		err = FUNC2(pdev, plfdata, NULL, NULL,
						desc->id);
		if (err)
			return err;
	}

	return 0;
}