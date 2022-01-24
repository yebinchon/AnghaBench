#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct regulator_dev {int dummy; } ;
struct regulator_config {int /*<<< orphan*/  init_data; struct aat2870_regulator* driver_data; TYPE_1__* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; int /*<<< orphan*/  id; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct aat2870_regulator {TYPE_2__ desc; int /*<<< orphan*/  aat2870; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 struct aat2870_regulator* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 struct regulator_dev* FUNC6 (TYPE_1__*,TYPE_2__*,struct regulator_config*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct regulator_dev*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct aat2870_regulator *ri;
	struct regulator_config config = { };
	struct regulator_dev *rdev;

	ri = FUNC2(pdev->id);
	if (!ri) {
		FUNC3(&pdev->dev, "Invalid device ID, %d\n", pdev->id);
		return -EINVAL;
	}
	ri->aat2870 = FUNC4(pdev->dev.parent);

	config.dev = &pdev->dev;
	config.driver_data = ri;
	config.init_data = FUNC5(&pdev->dev);

	rdev = FUNC6(&pdev->dev, &ri->desc, &config);
	if (FUNC0(rdev)) {
		FUNC3(&pdev->dev, "Failed to register regulator %s\n",
			ri->desc.name);
		return FUNC1(rdev);
	}
	FUNC7(pdev, rdev);

	return 0;
}