#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct regulator_config {int /*<<< orphan*/  init_data; int /*<<< orphan*/  regmap; struct da9052_regulator* driver_data; int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct mfd_cell {size_t id; } ;
struct da9052_regulator {int /*<<< orphan*/  rdev; TYPE_1__* info; struct da9052* da9052; } ;
struct da9052_pdata {int /*<<< orphan*/ * regulators; } ;
struct da9052 {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; int /*<<< orphan*/  chip_id; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {TYPE_3__ reg_desc; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,...) ; 
 struct da9052* FUNC3 (int /*<<< orphan*/ ) ; 
 struct da9052_pdata* FUNC4 (int /*<<< orphan*/ ) ; 
 struct da9052_regulator* FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__*,struct regulator_config*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,size_t) ; 
 struct mfd_cell* FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct da9052_regulator*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	const struct mfd_cell *cell = FUNC8(pdev);
	struct regulator_config config = { };
	struct da9052_regulator *regulator;
	struct da9052 *da9052;
	struct da9052_pdata *pdata;

	regulator = FUNC5(&pdev->dev, sizeof(struct da9052_regulator),
				 GFP_KERNEL);
	if (!regulator)
		return -ENOMEM;

	da9052 = FUNC3(pdev->dev.parent);
	pdata = FUNC4(da9052->dev);
	regulator->da9052 = da9052;

	regulator->info = FUNC7(regulator->da9052->chip_id,
					      cell->id);
	if (regulator->info == NULL) {
		FUNC2(&pdev->dev, "invalid regulator ID specified\n");
		return -EINVAL;
	}

	config.dev = da9052->dev;
	config.driver_data = regulator;
	config.regmap = da9052->regmap;
	if (pdata)
		config.init_data = pdata->regulators[cell->id];

	regulator->rdev = FUNC6(&pdev->dev,
						  &regulator->info->reg_desc,
						  &config);
	if (FUNC0(regulator->rdev)) {
		FUNC2(&pdev->dev, "failed to register regulator %s\n",
			regulator->info->reg_desc.name);
		return FUNC1(regulator->rdev);
	}

	FUNC9(pdev, regulator);

	return 0;
}