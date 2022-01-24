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
struct regulator_dev {int dummy; } ;
struct regulator_desc {int dummy; } ;
struct regulator_config {int /*<<< orphan*/  init_data; struct device_node* of_node; struct device* dev; struct regulator_dev* regmap; } ;
typedef  struct regulator_dev regmap ;
struct device {TYPE_1__* driver; struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_match_table; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct regulator_dev* FUNC3 (struct device*,struct regulator_desc const*,struct regulator_config*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct device_node*,struct regulator_desc const*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,struct device*) ; 
 struct regulator_dev* FUNC6 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = pdev->dev.of_node;
	struct regulator_config config = { };
	const struct regulator_desc *desc;
	struct regulator_dev *rdev;
	struct regmap *regmap;
	int ret;

	regmap = FUNC6(np, "st,syscfg");
	if (FUNC0(regmap))
		return FUNC1(regmap);

	desc = (const struct regulator_desc *)
		FUNC5(dev->driver->of_match_table, dev)->data;

	config.regmap = regmap;
	config.dev = dev;
	config.of_node = np;
	config.init_data = FUNC4(dev, np, desc);

	rdev = FUNC3(dev, desc, &config);
	if (FUNC0(rdev)) {
		ret = FUNC1(rdev);
		FUNC2(dev, "register failed with error %d\n", ret);
		return ret;
	}

	return 0;
}