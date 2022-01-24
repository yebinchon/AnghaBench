#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct regulator_dev {int dummy; } ;
struct regulator_config {struct hi655x_regulator* driver_data; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct hi655x_regulator {TYPE_1__ rdesc; } ;
struct hi655x_pmic {int /*<<< orphan*/  regmap; } ;
struct TYPE_8__ {int /*<<< orphan*/  rdesc; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_2__*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,...) ; 
 struct hi655x_pmic* FUNC4 (int /*<<< orphan*/ ) ; 
 struct hi655x_regulator* FUNC5 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 struct regulator_dev* FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,struct regulator_config*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct hi655x_regulator*) ; 
 TYPE_2__* regulators ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	unsigned int i;
	struct hi655x_regulator *regulator;
	struct hi655x_pmic *pmic;
	struct regulator_config config = { };
	struct regulator_dev *rdev;

	pmic = FUNC4(pdev->dev.parent);
	if (!pmic) {
		FUNC3(&pdev->dev, "no pmic in the regulator parent node\n");
		return -ENODEV;
	}

	regulator = FUNC5(&pdev->dev, sizeof(*regulator), GFP_KERNEL);
	if (!regulator)
		return -ENOMEM;

	FUNC7(pdev, regulator);

	config.dev = pdev->dev.parent;
	config.regmap = pmic->regmap;
	config.driver_data = regulator;
	for (i = 0; i < FUNC0(regulators); i++) {
		rdev = FUNC6(&pdev->dev,
					       &regulators[i].rdesc,
					       &config);
		if (FUNC1(rdev)) {
			FUNC3(&pdev->dev, "failed to register regulator %s\n",
				regulator->rdesc.name);
			return FUNC2(rdev);
		}
	}
	return 0;
}