#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct regulator_init_data {int dummy; } ;
struct regulator_config {void* driver_data; struct regulator_init_data* init_data; void* regmap; TYPE_4__* dev; } ;
struct pv88080_compatible_regmap {int /*<<< orphan*/  hvbuck_vsel_mask; int /*<<< orphan*/  hvbuck_vsel_reg; int /*<<< orphan*/  hvbuck_enable_mask; int /*<<< orphan*/  hvbuck_enable_reg; TYPE_1__* buck_regmap; } ;
struct pv88080 {unsigned long type; void** rdev; TYPE_4__* dev; void* regmap; struct pv88080_compatible_regmap* regmap_config; } ;
struct of_device_id {scalar_t__ data; } ;
struct i2c_device_id {unsigned long driver_data; } ;
struct TYPE_14__ {scalar_t__ of_node; } ;
struct i2c_client {int /*<<< orphan*/  irq; TYPE_4__ dev; } ;
struct TYPE_15__ {unsigned int min_uV; unsigned int uV_step; unsigned int n_voltages; int /*<<< orphan*/  vsel_mask; int /*<<< orphan*/  vsel_reg; int /*<<< orphan*/  enable_mask; int /*<<< orphan*/  enable_reg; int /*<<< orphan*/  csel_mask; int /*<<< orphan*/  csel_reg; } ;
struct TYPE_13__ {unsigned int min_uV; unsigned int uV_step; unsigned int max_uV; } ;
struct TYPE_12__ {TYPE_6__ desc; int /*<<< orphan*/  conf5; int /*<<< orphan*/  conf2; int /*<<< orphan*/  mode_reg; } ;
struct TYPE_11__ {int /*<<< orphan*/  buck_vsel_mask; int /*<<< orphan*/  buck_vsel_reg; int /*<<< orphan*/  buck_enable_mask; int /*<<< orphan*/  buck_enable_reg; int /*<<< orphan*/  buck_vrange_gain_reg; int /*<<< orphan*/  buck_vdac_range_reg; int /*<<< orphan*/  buck_mode_reg; int /*<<< orphan*/  buck_limit_mask; int /*<<< orphan*/  buck_limit_reg; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 unsigned int PV88080_BUCK_VDAC_RANGE_MASK ; 
 unsigned int PV88080_BUCK_VDAC_RANGE_SHIFT ; 
 unsigned int PV88080_BUCK_VRANGE_GAIN_MASK ; 
 unsigned int PV88080_BUCK_VRANGE_GAIN_SHIFT ; 
 size_t PV88080_ID_HVBUCK ; 
 int PV88080_MAX_REGULATORS ; 
 int PV88080_M_OVER_TEMP ; 
 int PV88080_M_VDD_FLT ; 
 int /*<<< orphan*/  PV88080_REG_MASK_A ; 
 int /*<<< orphan*/  PV88080_REG_MASK_B ; 
 int /*<<< orphan*/  PV88080_REG_MASK_C ; 
#define  TYPE_PV88080_AA 129 
#define  TYPE_PV88080_BA 128 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,...) ; 
 struct regulator_init_data* FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*) ; 
 struct pv88080* FUNC5 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 void* FUNC7 (TYPE_4__*,TYPE_6__*,struct regulator_config*) ; 
 int FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct pv88080*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct pv88080*) ; 
 struct of_device_id* FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct pv88080_compatible_regmap pv88080_aa_regs ; 
 struct pv88080_compatible_regmap pv88080_ba_regs ; 
 TYPE_3__* pv88080_buck_vol ; 
 int /*<<< orphan*/  pv88080_dt_ids ; 
 int /*<<< orphan*/  pv88080_irq_handler ; 
 int /*<<< orphan*/  pv88080_regmap_config ; 
 TYPE_2__* pv88080_regulator_info ; 
 int FUNC11 (void*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC12 (void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (void*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(struct i2c_client *i2c,
		const struct i2c_device_id *id)
{
	struct regulator_init_data *init_data = FUNC3(&i2c->dev);
	struct pv88080 *chip;
	const struct pv88080_compatible_regmap *regmap_config;
	const struct of_device_id *match;
	struct regulator_config config = { };
	int i, error, ret;
	unsigned int conf2, conf5;

	chip = FUNC5(&i2c->dev, sizeof(struct pv88080), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	chip->dev = &i2c->dev;
	chip->regmap = FUNC6(i2c, &pv88080_regmap_config);
	if (FUNC0(chip->regmap)) {
		error = FUNC1(chip->regmap);
		FUNC2(chip->dev, "Failed to allocate register map: %d\n",
			error);
		return error;
	}

	if (i2c->dev.of_node) {
		match = FUNC10(pv88080_dt_ids, i2c->dev.of_node);
		if (!match) {
			FUNC2(chip->dev, "Failed to get of_match_node\n");
			return -EINVAL;
		}
		chip->type = (unsigned long)match->data;
	} else {
		chip->type = id->driver_data;
	}

	FUNC9(i2c, chip);

	if (i2c->irq != 0) {
		ret = FUNC13(chip->regmap, PV88080_REG_MASK_A, 0xFF);
		if (ret < 0) {
			FUNC2(chip->dev,
				"Failed to mask A reg: %d\n", ret);
			return ret;
		}
		ret = FUNC13(chip->regmap, PV88080_REG_MASK_B, 0xFF);
		if (ret < 0) {
			FUNC2(chip->dev,
				"Failed to mask B reg: %d\n", ret);
			return ret;
		}
		ret = FUNC13(chip->regmap, PV88080_REG_MASK_C, 0xFF);
		if (ret < 0) {
			FUNC2(chip->dev,
				"Failed to mask C reg: %d\n", ret);
			return ret;
		}

		ret = FUNC8(&i2c->dev, i2c->irq, NULL,
					pv88080_irq_handler,
					IRQF_TRIGGER_LOW|IRQF_ONESHOT,
					"pv88080", chip);
		if (ret != 0) {
			FUNC2(chip->dev, "Failed to request IRQ: %d\n",
				i2c->irq);
			return ret;
		}

		ret = FUNC12(chip->regmap, PV88080_REG_MASK_A,
			PV88080_M_VDD_FLT | PV88080_M_OVER_TEMP, 0);
		if (ret < 0) {
			FUNC2(chip->dev,
				"Failed to update mask reg: %d\n", ret);
			return ret;
		}
	} else {
		FUNC4(chip->dev, "No IRQ configured\n");
	}

	switch (chip->type) {
	case TYPE_PV88080_AA:
		chip->regmap_config = &pv88080_aa_regs;
		break;
	case TYPE_PV88080_BA:
		chip->regmap_config = &pv88080_ba_regs;
		break;
	}

	regmap_config = chip->regmap_config;
	config.dev = chip->dev;
	config.regmap = chip->regmap;

	/* Registeration for BUCK1, 2, 3 */
	for (i = 0; i < PV88080_MAX_REGULATORS-1; i++) {
		if (init_data)
			config.init_data = &init_data[i];

		pv88080_regulator_info[i].desc.csel_reg
			= regmap_config->buck_regmap[i].buck_limit_reg;
		pv88080_regulator_info[i].desc.csel_mask
			= regmap_config->buck_regmap[i].buck_limit_mask;
		pv88080_regulator_info[i].mode_reg
			= regmap_config->buck_regmap[i].buck_mode_reg;
		pv88080_regulator_info[i].conf2
			= regmap_config->buck_regmap[i].buck_vdac_range_reg;
		pv88080_regulator_info[i].conf5
			= regmap_config->buck_regmap[i].buck_vrange_gain_reg;
		pv88080_regulator_info[i].desc.enable_reg
			= regmap_config->buck_regmap[i].buck_enable_reg;
		pv88080_regulator_info[i].desc.enable_mask
			= regmap_config->buck_regmap[i].buck_enable_mask;
		pv88080_regulator_info[i].desc.vsel_reg
			= regmap_config->buck_regmap[i].buck_vsel_reg;
		pv88080_regulator_info[i].desc.vsel_mask
			= regmap_config->buck_regmap[i].buck_vsel_mask;

		ret = FUNC11(chip->regmap,
				pv88080_regulator_info[i].conf2, &conf2);
		if (ret < 0)
			return ret;
		conf2 = ((conf2 >> PV88080_BUCK_VDAC_RANGE_SHIFT) &
			PV88080_BUCK_VDAC_RANGE_MASK);

		ret = FUNC11(chip->regmap,
				pv88080_regulator_info[i].conf5, &conf5);
		if (ret < 0)
			return ret;
		conf5 = ((conf5 >> PV88080_BUCK_VRANGE_GAIN_SHIFT) &
			PV88080_BUCK_VRANGE_GAIN_MASK);

		pv88080_regulator_info[i].desc.min_uV =
			pv88080_buck_vol[conf2].min_uV * (conf5+1);
		pv88080_regulator_info[i].desc.uV_step =
			pv88080_buck_vol[conf2].uV_step * (conf5+1);
		pv88080_regulator_info[i].desc.n_voltages =
			((pv88080_buck_vol[conf2].max_uV * (conf5+1))
			- (pv88080_regulator_info[i].desc.min_uV))
			/(pv88080_regulator_info[i].desc.uV_step) + 1;

		config.driver_data = (void *)&pv88080_regulator_info[i];
		chip->rdev[i] = FUNC7(chip->dev,
			&pv88080_regulator_info[i].desc, &config);
		if (FUNC0(chip->rdev[i])) {
			FUNC2(chip->dev,
				"Failed to register PV88080 regulator\n");
			return FUNC1(chip->rdev[i]);
		}
	}

	pv88080_regulator_info[PV88080_ID_HVBUCK].desc.enable_reg
		= regmap_config->hvbuck_enable_reg;
	pv88080_regulator_info[PV88080_ID_HVBUCK].desc.enable_mask
		= regmap_config->hvbuck_enable_mask;
	pv88080_regulator_info[PV88080_ID_HVBUCK].desc.vsel_reg
		= regmap_config->hvbuck_vsel_reg;
	pv88080_regulator_info[PV88080_ID_HVBUCK].desc.vsel_mask
		= regmap_config->hvbuck_vsel_mask;

	/* Registeration for HVBUCK */
	if (init_data)
		config.init_data = &init_data[PV88080_ID_HVBUCK];

	config.driver_data = (void *)&pv88080_regulator_info[PV88080_ID_HVBUCK];
	chip->rdev[PV88080_ID_HVBUCK] = FUNC7(chip->dev,
		&pv88080_regulator_info[PV88080_ID_HVBUCK].desc, &config);
	if (FUNC0(chip->rdev[PV88080_ID_HVBUCK])) {
		FUNC2(chip->dev, "Failed to register PV88080 regulator\n");
		return FUNC1(chip->rdev[PV88080_ID_HVBUCK]);
	}

	return 0;
}