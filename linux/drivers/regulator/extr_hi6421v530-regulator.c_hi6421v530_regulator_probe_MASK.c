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
struct regulator_dev {int dummy; } ;
struct regulator_config {TYPE_1__* driver_data; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct hi6421_pmic {int /*<<< orphan*/  regmap; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {TYPE_3__ rdesc; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,...) ; 
 struct hi6421_pmic* FUNC4 (int /*<<< orphan*/ ) ; 
 struct regulator_dev* FUNC5 (TYPE_2__*,TYPE_3__*,struct regulator_config*) ; 
 TYPE_1__* hi6421v530_regulator_info ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct hi6421_pmic *pmic;
	struct regulator_dev *rdev;
	struct regulator_config config = { };
	unsigned int i;

	pmic = FUNC4(pdev->dev.parent);
	if (!pmic) {
		FUNC3(&pdev->dev, "no pmic in the regulator parent node\n");
		return -ENODEV;
	}

	for (i = 0; i < FUNC0(hi6421v530_regulator_info); i++) {
		config.dev = pdev->dev.parent;
		config.regmap = pmic->regmap;
		config.driver_data = &hi6421v530_regulator_info[i];

		rdev = FUNC5(&pdev->dev,
				&hi6421v530_regulator_info[i].rdesc,
				&config);
		if (FUNC1(rdev)) {
			FUNC3(&pdev->dev, "failed to register regulator %s\n",
				hi6421v530_regulator_info[i].rdesc.name);
			return FUNC2(rdev);
		}
	}
	return 0;
}