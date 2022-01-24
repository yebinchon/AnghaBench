#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct regulator_dev {int dummy; } ;
struct regulator_config {struct regmap* regmap; TYPE_1__* driver_data; TYPE_2__* dev; } ;
struct regmap {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {TYPE_3__ desc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int MT6380_MAX_REGULATOR ; 
 int FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct regulator_dev* FUNC4 (TYPE_2__*,TYPE_3__*,struct regulator_config*) ; 
 TYPE_1__* mt6380_regulators ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct regmap *regmap = FUNC3(pdev->dev.parent, NULL);
	struct regulator_config config = {};
	struct regulator_dev *rdev;
	int i;

	for (i = 0; i < MT6380_MAX_REGULATOR; i++) {
		config.dev = &pdev->dev;
		config.driver_data = &mt6380_regulators[i];
		config.regmap = regmap;
		rdev = FUNC4(&pdev->dev,
					       &mt6380_regulators[i].desc,
				&config);
		if (FUNC0(rdev)) {
			FUNC2(&pdev->dev, "failed to register %s\n",
				mt6380_regulators[i].desc.name);
			return FUNC1(rdev);
		}
	}
	return 0;
}