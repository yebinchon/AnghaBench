#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct regulator_dev {int dummy; } ;
struct regulator_config {struct regmap* regmap; TYPE_2__* dev; } ;
struct regmap {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,...) ; 
 struct regmap* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct regulator_dev* FUNC5 (TYPE_2__*,TYPE_1__*,struct regulator_config*) ; 
 TYPE_1__* regulators ; 
 int FUNC6 (struct regmap*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	int i, ret;
	struct regmap *regmap;
	struct regulator_config config = { };
	struct regulator_dev *rdev;

	regmap = FUNC4(pdev->dev.parent, NULL);
	if (!regmap) {
		FUNC3(&pdev->dev, "failed to get regmap.\n");
		return -ENODEV;
	}

	ret = FUNC6(regmap);
	if (ret) {
		FUNC3(&pdev->dev, "failed to release regulator lock\n");
		return ret;
	}

	config.dev = &pdev->dev;
	config.regmap = regmap;

	for (i = 0; i < FUNC0(regulators); i++) {
		rdev = FUNC5(&pdev->dev, &regulators[i],
					       &config);
		if (FUNC1(rdev)) {
			FUNC3(&pdev->dev, "failed to register regulator %s\n",
				regulators[i].name);
			return FUNC2(rdev);
		}
	}

	return 0;
}