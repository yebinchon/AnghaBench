#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct regulator_init_data {int dummy; } ;
struct regulator_config {void* driver_data; struct regulator_init_data* init_data; int /*<<< orphan*/  regmap; int /*<<< orphan*/ * dev; } ;
struct pv88090 {int /*<<< orphan*/ * rdev; int /*<<< orphan*/ * dev; int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int min_uV; int uV_step; int n_voltages; } ;
struct TYPE_5__ {int min_uV; int uV_step; int max_uV; } ;
struct TYPE_4__ {TYPE_3__ desc; int /*<<< orphan*/  conf2; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int PV88090_BUCK_VDAC_RANGE_MASK ; 
 unsigned int PV88090_BUCK_VDAC_RANGE_SHIFT ; 
 unsigned int PV88090_BUCK_VRANGE_GAIN_MASK ; 
 int PV88090_BUCK_VRANGE_GAIN_SHIFT ; 
 int PV88090_ID_BUCK2 ; 
 int PV88090_ID_BUCK3 ; 
 int PV88090_MAX_REGULATORS ; 
 int PV88090_M_OVER_TEMP ; 
 int PV88090_M_VDD_FLT ; 
 int /*<<< orphan*/  PV88090_REG_BUCK_FOLD_RANGE ; 
 int /*<<< orphan*/  PV88090_REG_MASK_A ; 
 int /*<<< orphan*/  PV88090_REG_MASK_B ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 struct regulator_init_data* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct pv88090* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*,struct regulator_config*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct pv88090*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct pv88090*) ; 
 TYPE_2__* pv88090_buck_vol ; 
 int /*<<< orphan*/  pv88090_irq_handler ; 
 int /*<<< orphan*/  pv88090_regmap_config ; 
 TYPE_1__* pv88090_regulator_info ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(struct i2c_client *i2c,
		const struct i2c_device_id *id)
{
	struct regulator_init_data *init_data = FUNC3(&i2c->dev);
	struct pv88090 *chip;
	struct regulator_config config = { };
	int error, i, ret = 0;
	unsigned int conf2, range, index;

	chip = FUNC5(&i2c->dev, sizeof(struct pv88090), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	chip->dev = &i2c->dev;
	chip->regmap = FUNC6(i2c, &pv88090_regmap_config);
	if (FUNC0(chip->regmap)) {
		error = FUNC1(chip->regmap);
		FUNC2(chip->dev, "Failed to allocate register map: %d\n",
			error);
		return error;
	}

	FUNC9(i2c, chip);

	if (i2c->irq != 0) {
		ret = FUNC12(chip->regmap, PV88090_REG_MASK_A, 0xFF);
		if (ret < 0) {
			FUNC2(chip->dev,
				"Failed to mask A reg: %d\n", ret);
			return ret;
		}

		ret = FUNC12(chip->regmap, PV88090_REG_MASK_B, 0xFF);
		if (ret < 0) {
			FUNC2(chip->dev,
				"Failed to mask B reg: %d\n", ret);
			return ret;
		}

		ret = FUNC8(&i2c->dev, i2c->irq, NULL,
					pv88090_irq_handler,
					IRQF_TRIGGER_LOW|IRQF_ONESHOT,
					"pv88090", chip);
		if (ret != 0) {
			FUNC2(chip->dev, "Failed to request IRQ: %d\n",
				i2c->irq);
			return ret;
		}

		ret = FUNC11(chip->regmap, PV88090_REG_MASK_A,
			PV88090_M_VDD_FLT | PV88090_M_OVER_TEMP, 0);
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

	for (i = 0; i < PV88090_MAX_REGULATORS; i++) {
		if (init_data)
			config.init_data = &init_data[i];

		if (i == PV88090_ID_BUCK2 || i == PV88090_ID_BUCK3) {
			ret = FUNC10(chip->regmap,
				pv88090_regulator_info[i].conf2, &conf2);
			if (ret < 0)
				return ret;

			conf2 = (conf2 >> PV88090_BUCK_VDAC_RANGE_SHIFT) &
				PV88090_BUCK_VDAC_RANGE_MASK;

			ret = FUNC10(chip->regmap,
				PV88090_REG_BUCK_FOLD_RANGE, &range);
			if (ret < 0)
				return ret;

			range = (range >>
				 (PV88090_BUCK_VRANGE_GAIN_SHIFT + i - 1)) &
				PV88090_BUCK_VRANGE_GAIN_MASK;
			index = ((range << 1) | conf2);
			if (index > PV88090_ID_BUCK3) {
				FUNC2(chip->dev,
					"Invalid index(%d)\n", index);
				return -EINVAL;
			}

			pv88090_regulator_info[i].desc.min_uV
				= pv88090_buck_vol[index].min_uV;
			pv88090_regulator_info[i].desc.uV_step
				= pv88090_buck_vol[index].uV_step;
			pv88090_regulator_info[i].desc.n_voltages
				= ((pv88090_buck_vol[index].max_uV)
				- (pv88090_buck_vol[index].min_uV))
				/(pv88090_buck_vol[index].uV_step) + 1;
		}

		config.driver_data = (void *)&pv88090_regulator_info[i];
		chip->rdev[i] = FUNC7(chip->dev,
			&pv88090_regulator_info[i].desc, &config);
		if (FUNC0(chip->rdev[i])) {
			FUNC2(chip->dev,
				"Failed to register PV88090 regulator\n");
			return FUNC1(chip->rdev[i]);
		}
	}

	return 0;
}