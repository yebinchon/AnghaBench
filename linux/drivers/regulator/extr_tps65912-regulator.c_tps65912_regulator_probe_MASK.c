#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tps65912 {TYPE_2__* dev; int /*<<< orphan*/  regmap; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {int /*<<< orphan*/  regmap; TYPE_1__* dev; struct tps65912* driver_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 struct tps65912* FUNC4 (int /*<<< orphan*/ ) ; 
 struct regulator_dev* FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,struct regulator_config*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct tps65912*) ; 
 int /*<<< orphan*/ * regulators ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct tps65912 *tps = FUNC4(pdev->dev.parent);
	struct regulator_config config = { };
	struct regulator_dev *rdev;
	int i;

	FUNC6(pdev, tps);

	config.dev = &pdev->dev;
	config.driver_data = tps;
	config.dev->of_node = tps->dev->of_node;
	config.regmap = tps->regmap;

	for (i = 0; i < FUNC0(regulators); i++) {
		rdev = FUNC5(&pdev->dev, &regulators[i],
					       &config);
		if (FUNC1(rdev)) {
			FUNC3(tps->dev, "failed to register %s regulator\n",
				pdev->name);
			return FUNC2(rdev);
		}
	}

	return 0;
}