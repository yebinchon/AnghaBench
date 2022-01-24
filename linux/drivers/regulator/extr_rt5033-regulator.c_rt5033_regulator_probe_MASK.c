#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rt5033_dev {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {int /*<<< orphan*/  regmap; struct rt5033_dev* driver_data; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int,int) ; 
 struct rt5033_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 struct regulator_dev* FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,struct regulator_config*) ; 
 int /*<<< orphan*/ * rt5033_supported_regulators ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct rt5033_dev *rt5033 = FUNC4(pdev->dev.parent);
	int ret, i;
	struct regulator_config config = {};

	config.dev = rt5033->dev;
	config.driver_data = rt5033;

	for (i = 0; i < FUNC0(rt5033_supported_regulators); i++) {
		struct regulator_dev *regulator;

		config.regmap = rt5033->regmap;

		regulator = FUNC5(&pdev->dev,
				&rt5033_supported_regulators[i], &config);
		if (FUNC1(regulator)) {
			ret = FUNC2(regulator);
			FUNC3(&pdev->dev,
				"Regulator init failed %d: with error: %d\n",
				i, ret);
			return ret;
		}
	}

	return 0;
}