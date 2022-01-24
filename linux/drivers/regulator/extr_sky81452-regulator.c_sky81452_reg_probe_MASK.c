#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct regulator_init_data {int dummy; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {int /*<<< orphan*/  regmap; int /*<<< orphan*/  of_node; struct regulator_init_data const* init_data; int /*<<< orphan*/  dev; } ;
struct device {int /*<<< orphan*/  parent; int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct regulator_init_data* FUNC4 (struct device*) ; 
 struct regulator_dev* FUNC5 (struct device*,int /*<<< orphan*/ *,struct regulator_config*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct regulator_dev*) ; 
 int /*<<< orphan*/  sky81452_reg ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	const struct regulator_init_data *init_data = FUNC4(dev);
	struct regulator_config config = { };
	struct regulator_dev *rdev;

	config.dev = dev->parent;
	config.init_data = init_data;
	config.of_node = dev->of_node;
	config.regmap = FUNC3(dev->parent);

	rdev = FUNC5(dev, &sky81452_reg, &config);
	if (FUNC0(rdev)) {
		FUNC2(dev, "failed to register. err=%ld\n", FUNC1(rdev));
		return FUNC1(rdev);
	}

	FUNC6(pdev, rdev);

	return 0;
}