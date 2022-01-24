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
struct regulator_config {struct max77650_regulator_desc* driver_data; struct device* dev; } ;
struct regmap {int dummy; } ;
struct device {scalar_t__ of_node; struct device* parent; } ;
struct platform_device {struct device dev; } ;
struct max77650_regulator_desc {int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
#define  MAX77650_CID_77650A 131 
#define  MAX77650_CID_77650C 130 
#define  MAX77650_CID_77651A 129 
#define  MAX77650_CID_77651B 128 
 int FUNC1 (unsigned int) ; 
 size_t MAX77650_REGULATOR_ID_LDO ; 
 size_t MAX77650_REGULATOR_ID_SBB0 ; 
 size_t MAX77650_REGULATOR_ID_SBB1 ; 
 size_t MAX77650_REGULATOR_ID_SBB2 ; 
 int MAX77650_REGULATOR_NUM_REGULATORS ; 
 int /*<<< orphan*/  MAX77650_REG_CID ; 
 int FUNC2 (struct regulator_dev*) ; 
 struct regmap* FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 struct max77650_regulator_desc** FUNC4 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 struct regulator_dev* FUNC5 (struct device*,int /*<<< orphan*/ *,struct regulator_config*) ; 
 struct max77650_regulator_desc max77650_LDO_desc ; 
 struct max77650_regulator_desc max77650_SBB0_desc ; 
 struct max77650_regulator_desc max77650_SBB1_desc ; 
 struct max77650_regulator_desc max77650_SBB2_desc ; 
 struct max77650_regulator_desc max77651_SBB1_desc ; 
 struct max77650_regulator_desc max77651_SBB2_desc ; 
 int FUNC6 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct max77650_regulator_desc **rdescs;
	struct max77650_regulator_desc *rdesc;
	struct regulator_config config = { };
	struct device *dev, *parent;
	struct regulator_dev *rdev;
	struct regmap *map;
	unsigned int val;
	int i, rv;

	dev = &pdev->dev;
	parent = dev->parent;

	if (!dev->of_node)
		dev->of_node = parent->of_node;

	rdescs = FUNC4(dev, MAX77650_REGULATOR_NUM_REGULATORS,
			      sizeof(*rdescs), GFP_KERNEL);
	if (!rdescs)
		return -ENOMEM;

	map = FUNC3(parent, NULL);
	if (!map)
		return -ENODEV;

	rv = FUNC6(map, MAX77650_REG_CID, &val);
	if (rv)
		return rv;

	rdescs[MAX77650_REGULATOR_ID_LDO] = &max77650_LDO_desc;
	rdescs[MAX77650_REGULATOR_ID_SBB0] = &max77650_SBB0_desc;

	switch (FUNC1(val)) {
	case MAX77650_CID_77650A:
	case MAX77650_CID_77650C:
		rdescs[MAX77650_REGULATOR_ID_SBB1] = &max77650_SBB1_desc;
		rdescs[MAX77650_REGULATOR_ID_SBB2] = &max77650_SBB2_desc;
		break;
	case MAX77650_CID_77651A:
	case MAX77650_CID_77651B:
		rdescs[MAX77650_REGULATOR_ID_SBB1] = &max77651_SBB1_desc;
		rdescs[MAX77650_REGULATOR_ID_SBB2] = &max77651_SBB2_desc;
		break;
	default:
		return -ENODEV;
	}

	config.dev = parent;

	for (i = 0; i < MAX77650_REGULATOR_NUM_REGULATORS; i++) {
		rdesc = rdescs[i];
		config.driver_data = rdesc;

		rdev = FUNC5(dev, &rdesc->desc, &config);
		if (FUNC0(rdev))
			return FUNC2(rdev);
	}

	return 0;
}