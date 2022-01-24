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
struct regulator_init_data {int dummy; } ;
struct regulator_config {void* driver_data; struct regulator_init_data* init_data; int /*<<< orphan*/  regmap; int /*<<< orphan*/ * dev; } ;
struct pv88060 {int /*<<< orphan*/ * rdev; int /*<<< orphan*/ * dev; int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int PV88060_MAX_REGULATORS ; 
 int PV88060_M_OVER_TEMP ; 
 int PV88060_M_VDD_FLT ; 
 int /*<<< orphan*/  PV88060_REG_MASK_A ; 
 int /*<<< orphan*/  PV88060_REG_MASK_B ; 
 int /*<<< orphan*/  PV88060_REG_MASK_C ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 struct regulator_init_data* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct pv88060* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct regulator_config*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct pv88060*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct pv88060*) ; 
 int /*<<< orphan*/  pv88060_irq_handler ; 
 int /*<<< orphan*/  pv88060_regmap_config ; 
 TYPE_1__* pv88060_regulator_info ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *i2c,
		const struct i2c_device_id *id)
{
	struct regulator_init_data *init_data = FUNC3(&i2c->dev);
	struct pv88060 *chip;
	struct regulator_config config = { };
	int error, i, ret = 0;

	chip = FUNC5(&i2c->dev, sizeof(struct pv88060), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	chip->dev = &i2c->dev;
	chip->regmap = FUNC6(i2c, &pv88060_regmap_config);
	if (FUNC0(chip->regmap)) {
		error = FUNC1(chip->regmap);
		FUNC2(chip->dev, "Failed to allocate register map: %d\n",
			error);
		return error;
	}

	FUNC9(i2c, chip);

	if (i2c->irq != 0) {
		ret = FUNC11(chip->regmap, PV88060_REG_MASK_A, 0xFF);
		if (ret < 0) {
			FUNC2(chip->dev,
				"Failed to mask A reg: %d\n", ret);
			return ret;
		}

		ret = FUNC11(chip->regmap, PV88060_REG_MASK_B, 0xFF);
		if (ret < 0) {
			FUNC2(chip->dev,
				"Failed to mask B reg: %d\n", ret);
			return ret;
		}

		ret = FUNC11(chip->regmap, PV88060_REG_MASK_C, 0xFF);
		if (ret < 0) {
			FUNC2(chip->dev,
				"Failed to mask C reg: %d\n", ret);
			return ret;
		}

		ret = FUNC8(&i2c->dev, i2c->irq, NULL,
					pv88060_irq_handler,
					IRQF_TRIGGER_LOW|IRQF_ONESHOT,
					"pv88060", chip);
		if (ret != 0) {
			FUNC2(chip->dev, "Failed to request IRQ: %d\n",
				i2c->irq);
			return ret;
		}

		ret = FUNC10(chip->regmap, PV88060_REG_MASK_A,
			PV88060_M_VDD_FLT | PV88060_M_OVER_TEMP, 0);
		if (ret < 0) {
			FUNC2(chip->dev,
				"Failed to update mask reg: %d\n", ret);
			return ret;
		}

	} else {
		FUNC4(chip->dev, "No IRQ configured\n");
	}

	config.dev = chip->dev;
	config.regmap = chip->regmap;

	for (i = 0; i < PV88060_MAX_REGULATORS; i++) {
		if (init_data)
			config.init_data = &init_data[i];

		config.driver_data = (void *)&pv88060_regulator_info[i];
		chip->rdev[i] = FUNC7(chip->dev,
			&pv88060_regulator_info[i].desc, &config);
		if (FUNC0(chip->rdev[i])) {
			FUNC2(chip->dev,
				"Failed to register PV88060 regulator\n");
			return FUNC1(chip->rdev[i]);
		}
	}

	return 0;
}