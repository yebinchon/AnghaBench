#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stw481x {int /*<<< orphan*/  map; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {int /*<<< orphan*/  init_data; int /*<<< orphan*/  of_node; int /*<<< orphan*/  regmap; struct stw481x* driver_data; TYPE_1__* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  STW_CONF2 ; 
 int /*<<< orphan*/  STW_CONF2_VMMC_EXT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 struct stw481x* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 struct regulator_dev* FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,struct regulator_config*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vmmc_regulator ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct stw481x *stw481x = FUNC3(&pdev->dev);
	struct regulator_config config = { };
	struct regulator_dev *rdev;
	int ret;

	/* First disable the external VMMC if it's active */
	ret = FUNC7(stw481x->map, STW_CONF2,
				 STW_CONF2_VMMC_EXT, 0);
	if (ret) {
		FUNC2(&pdev->dev, "could not disable external VMMC\n");
		return ret;
	}

	/* Register VMMC regulator */
	config.dev = &pdev->dev;
	config.driver_data = stw481x;
	config.regmap = stw481x->map;
	config.of_node = pdev->dev.of_node;
	config.init_data = FUNC6(&pdev->dev,
						      pdev->dev.of_node,
						      &vmmc_regulator);

	rdev = FUNC5(&pdev->dev, &vmmc_regulator, &config);
	if (FUNC0(rdev)) {
		FUNC2(&pdev->dev,
			"error initializing STw481x VMMC regulator\n");
		return FUNC1(rdev);
	}

	FUNC4(&pdev->dev, "initialized STw481x VMMC regulator\n");
	return 0;
}