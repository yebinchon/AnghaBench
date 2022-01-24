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
struct regulator_config {int /*<<< orphan*/  regmap; struct regulator_init_data* init_data; struct pm8607_regulator_info* driver_data; int /*<<< orphan*/  dev; } ;
struct pm860x_chip {scalar_t__ id; int /*<<< orphan*/  regmap_companion; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; scalar_t__ buck3_double; } ;
struct TYPE_6__ {scalar_t__ vsel_reg; unsigned long long name; } ;
struct pm8607_regulator_info {int slope_double; TYPE_2__ desc; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int FUNC0 (struct pm8607_regulator_info*) ; 
 scalar_t__ CHIP_PM8607 ; 
 int EINVAL ; 
 int /*<<< orphan*/  IORESOURCE_REG ; 
 scalar_t__ FUNC1 (struct regulator_dev*) ; 
 int PM8607_ID_BUCK3 ; 
 int FUNC2 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,unsigned long long) ; 
 struct pm860x_chip* FUNC4 (int /*<<< orphan*/ ) ; 
 struct regulator_init_data* FUNC5 (TYPE_1__*) ; 
 struct regulator_dev* FUNC6 (TYPE_1__*,TYPE_2__*,struct regulator_config*) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct pm8607_regulator_info*) ; 
 struct pm8607_regulator_info* pm8606_regulator_info ; 
 struct pm8607_regulator_info* pm8607_regulator_info ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct pm860x_chip *chip = FUNC4(pdev->dev.parent);
	struct pm8607_regulator_info *info = NULL;
	struct regulator_init_data *pdata = FUNC5(&pdev->dev);
	struct regulator_config config = { };
	struct regulator_dev *rdev;
	struct resource *res;
	int i;

	res = FUNC7(pdev, IORESOURCE_REG, 0);
	if (res) {
		/* There're resources in 88PM8607 regulator driver */
		for (i = 0; i < FUNC0(pm8607_regulator_info); i++) {
			info = &pm8607_regulator_info[i];
			if (info->desc.vsel_reg == res->start)
				break;
		}
		if (i == FUNC0(pm8607_regulator_info)) {
			FUNC3(&pdev->dev, "Failed to find regulator %llu\n",
				(unsigned long long)res->start);
			return -EINVAL;
		}
	} else {
		/* There's no resource in 88PM8606 PREG regulator driver */
		info = &pm8606_regulator_info[0];
		/* i is used to check regulator ID */
		i = -1;
	}

	/* check DVC ramp slope double */
	if ((i == PM8607_ID_BUCK3) && chip->buck3_double)
		info->slope_double = 1;

	config.dev = chip->dev;
	config.driver_data = info;

	if (pdata)
		config.init_data = pdata;

	if (chip->id == CHIP_PM8607)
		config.regmap = chip->regmap;
	else
		config.regmap = chip->regmap_companion;

	rdev = FUNC6(&pdev->dev, &info->desc, &config);
	if (FUNC1(rdev)) {
		FUNC3(&pdev->dev, "failed to register regulator %s\n",
			info->desc.name);
		return FUNC2(rdev);
	}

	FUNC8(pdev, info);
	return 0;
}