#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct regulator_config {int /*<<< orphan*/ * ena_gpiod; int /*<<< orphan*/  of_node; int /*<<< orphan*/  regmap; struct da9211* driver_data; int /*<<< orphan*/  dev; int /*<<< orphan*/  init_data; } ;
struct da9211 {int num_regulator; scalar_t__ chip_irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; int /*<<< orphan*/ * rdev; TYPE_1__* pdata; } ;
struct TYPE_2__ {int num_buck; int /*<<< orphan*/ ** gpiod_ren; int /*<<< orphan*/ * reg_node; int /*<<< orphan*/ * init_data; } ;

/* Variables and functions */
 int DA9211_M_OV_CURR_A ; 
 int /*<<< orphan*/  DA9211_REG_CONFIG_E ; 
 int /*<<< orphan*/  DA9211_REG_MASK_B ; 
 unsigned int DA9211_SLAVE_SEL ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * da9211_regulators ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct regulator_config*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct da9211 *chip)
{
	struct regulator_config config = { };
	int i, ret;
	unsigned int data;

	ret = FUNC5(chip->regmap, DA9211_REG_CONFIG_E, &data);
	if (ret < 0) {
		FUNC2(chip->dev, "Failed to read CONFIG_E reg: %d\n", ret);
		return ret;
	}

	data &= DA9211_SLAVE_SEL;
	/* If configuration for 1/2 bucks is different between platform data
	 * and the register, driver should exit.
	 */
	if (chip->pdata->num_buck == 1 && data == 0x00)
		chip->num_regulator = 1;
	else if (chip->pdata->num_buck == 2 && data != 0x00)
		chip->num_regulator = 2;
	else {
		FUNC2(chip->dev, "Configuration is mismatched\n");
		return -EINVAL;
	}

	for (i = 0; i < chip->num_regulator; i++) {
		config.init_data = chip->pdata->init_data[i];
		config.dev = chip->dev;
		config.driver_data = chip;
		config.regmap = chip->regmap;
		config.of_node = chip->pdata->reg_node[i];

		if (chip->pdata->gpiod_ren[i])
			config.ena_gpiod = chip->pdata->gpiod_ren[i];
		else
			config.ena_gpiod = NULL;

		/*
		 * Hand the GPIO descriptor management over to the regulator
		 * core, remove it from GPIO devres management.
		 */
		if (config.ena_gpiod)
			FUNC3(chip->dev, config.ena_gpiod);
		chip->rdev[i] = FUNC4(chip->dev,
			&da9211_regulators[i], &config);
		if (FUNC0(chip->rdev[i])) {
			FUNC2(chip->dev,
				"Failed to register DA9211 regulator\n");
			return FUNC1(chip->rdev[i]);
		}

		if (chip->chip_irq != 0) {
			ret = FUNC6(chip->regmap,
				DA9211_REG_MASK_B, DA9211_M_OV_CURR_A << i, 0);
			if (ret < 0) {
				FUNC2(chip->dev,
					"Failed to update mask reg: %d\n", ret);
				return ret;
			}
		}
	}

	return 0;
}