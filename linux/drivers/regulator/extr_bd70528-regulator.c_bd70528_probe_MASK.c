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
struct rohm_regmap_dev {int /*<<< orphan*/  regmap; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 
 TYPE_2__* bd70528_desc ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 struct rohm_regmap_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 struct regulator_dev* FUNC5 (TYPE_1__*,TYPE_2__*,struct regulator_config*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct rohm_regmap_dev *bd70528;
	int i;
	struct regulator_config config = {
		.dev = pdev->dev.parent,
	};

	bd70528 = FUNC4(pdev->dev.parent);
	if (!bd70528) {
		FUNC3(&pdev->dev, "No MFD driver data\n");
		return -EINVAL;
	}

	config.regmap = bd70528->regmap;

	for (i = 0; i < FUNC0(bd70528_desc); i++) {
		struct regulator_dev *rdev;

		rdev = FUNC5(&pdev->dev, &bd70528_desc[i],
					       &config);
		if (FUNC1(rdev)) {
			FUNC3(&pdev->dev,
				"failed to register %s regulator\n",
				bd70528_desc[i].name);
			return FUNC2(rdev);
		}
	}
	return 0;
}