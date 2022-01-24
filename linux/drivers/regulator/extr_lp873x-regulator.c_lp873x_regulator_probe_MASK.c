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
struct regulator_config {int /*<<< orphan*/  regmap; struct lp873x* driver_data; TYPE_2__* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {int /*<<< orphan*/  name; TYPE_2__ dev; } ;
struct lp873x {TYPE_3__* dev; int /*<<< orphan*/  regmap; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_5__ {int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 struct lp873x* FUNC4 (int /*<<< orphan*/ ) ; 
 struct regulator_dev* FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,struct regulator_config*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct lp873x*) ; 
 TYPE_1__* regulators ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct lp873x *lp873 = FUNC4(pdev->dev.parent);
	struct regulator_config config = { };
	struct regulator_dev *rdev;
	int i;

	FUNC6(pdev, lp873);

	config.dev = &pdev->dev;
	config.dev->of_node = lp873->dev->of_node;
	config.driver_data = lp873;
	config.regmap = lp873->regmap;

	for (i = 0; i < FUNC0(regulators); i++) {
		rdev = FUNC5(&pdev->dev, &regulators[i].desc,
					       &config);
		if (FUNC1(rdev)) {
			FUNC3(lp873->dev, "failed to register %s regulator\n",
				pdev->name);
			return FUNC2(rdev);
		}
	}

	return 0;
}