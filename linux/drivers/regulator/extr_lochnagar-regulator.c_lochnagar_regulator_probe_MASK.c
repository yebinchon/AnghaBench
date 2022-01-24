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
struct regulator_dev {int dummy; } ;
struct regulator_desc {int /*<<< orphan*/  name; } ;
struct regulator_config {struct lochnagar* driver_data; int /*<<< orphan*/  regmap; struct device* dev; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {struct regulator_desc* data; } ;
struct lochnagar {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 struct lochnagar* FUNC3 (int /*<<< orphan*/ ) ; 
 struct regulator_dev* FUNC4 (struct device*,struct regulator_desc const*,struct regulator_config*) ; 
 int /*<<< orphan*/  lochnagar_of_match ; 
 struct of_device_id* FUNC5 (int /*<<< orphan*/ ,struct device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct lochnagar *lochnagar = FUNC3(dev->parent);
	struct regulator_config config = { };
	const struct of_device_id *of_id;
	const struct regulator_desc *desc;
	struct regulator_dev *rdev;
	int ret;

	config.dev = dev;
	config.regmap = lochnagar->regmap;
	config.driver_data = lochnagar;

	of_id = FUNC5(lochnagar_of_match, dev);
	if (!of_id)
		return -EINVAL;

	desc = of_id->data;

	rdev = FUNC4(dev, desc, &config);
	if (FUNC0(rdev)) {
		ret = FUNC1(rdev);
		FUNC2(dev, "Failed to register %s regulator: %d\n",
			desc->name, ret);
		return ret;
	}

	return 0;
}