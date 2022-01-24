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
struct resource {scalar_t__ start; } ;
struct regulator_init_data {int dummy; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {struct regulator_init_data* init_data; struct max8925_regulator_info* driver_data; int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_6__ {unsigned long long name; } ;
struct max8925_regulator_info {scalar_t__ vol_reg; TYPE_2__ desc; int /*<<< orphan*/  i2c; } ;
struct max8925_chip {int /*<<< orphan*/  dev; int /*<<< orphan*/  i2c; } ;

/* Variables and functions */
 int FUNC0 (struct max8925_regulator_info*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  IORESOURCE_REG ; 
 scalar_t__ FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 struct max8925_chip* FUNC4 (int /*<<< orphan*/ ) ; 
 struct regulator_init_data* FUNC5 (TYPE_1__*) ; 
 struct regulator_dev* FUNC6 (TYPE_1__*,TYPE_2__*,struct regulator_config*) ; 
 struct max8925_regulator_info* max8925_regulator_info ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct regulator_dev*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct max8925_chip *chip = FUNC4(pdev->dev.parent);
	struct regulator_init_data *pdata = FUNC5(&pdev->dev);
	struct regulator_config config = { };
	struct max8925_regulator_info *ri;
	struct resource *res;
	struct regulator_dev *rdev;
	int i;

	res = FUNC7(pdev, IORESOURCE_REG, 0);
	if (!res) {
		FUNC3(&pdev->dev, "No REG resource!\n");
		return -EINVAL;
	}
	for (i = 0; i < FUNC0(max8925_regulator_info); i++) {
		ri = &max8925_regulator_info[i];
		if (ri->vol_reg == res->start)
			break;
	}

	if (i == FUNC0(max8925_regulator_info)) {
		FUNC3(&pdev->dev, "Failed to find regulator %llu\n",
			(unsigned long long)res->start);
		return -EINVAL;
	}
	ri->i2c = chip->i2c;

	config.dev = chip->dev;
	config.driver_data = ri;

	if (pdata)
		config.init_data = pdata;

	rdev = FUNC6(&pdev->dev, &ri->desc, &config);
	if (FUNC1(rdev)) {
		FUNC3(&pdev->dev, "failed to register regulator %s\n",
				ri->desc.name);
		return FUNC2(rdev);
	}

	FUNC8(pdev, rdev);
	return 0;
}