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
typedef  int u32 ;
struct regulator_dev {int dummy; } ;
struct regulator_config {int /*<<< orphan*/  init_data; int /*<<< orphan*/  of_node; struct regulator_dev* regmap; struct device* dev; } ;
typedef  struct regulator_dev regmap ;
struct i2c_device_id {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct i2c_client {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 unsigned int SY8106A_GO_BIT ; 
 int SY8106A_MAX_MV ; 
 int SY8106A_MIN_MV ; 
 int /*<<< orphan*/  SY8106A_REG_VOUT1_SEL ; 
 int SY8106A_STEP_MV ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct regulator_dev* FUNC3 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 struct regulator_dev* FUNC4 (struct device*,int /*<<< orphan*/ *,struct regulator_config*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC7 (struct regulator_dev*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC8 (struct regulator_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  sy8106a_reg ; 
 int /*<<< orphan*/  sy8106a_regmap_config ; 

__attribute__((used)) static int FUNC9(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct device *dev = &i2c->dev;
	struct regulator_dev *rdev;
	struct regulator_config config = { };
	struct regmap *regmap;
	unsigned int reg, vsel;
	u32 fixed_voltage;
	int error;

	error = FUNC6(dev->of_node, "silergy,fixed-microvolt",
				     &fixed_voltage);
	if (error)
		return error;

	if (fixed_voltage < SY8106A_MIN_MV * 1000 ||
	    fixed_voltage > SY8106A_MAX_MV * 1000)
		return -EINVAL;

	regmap = FUNC3(i2c, &sy8106a_regmap_config);
	if (FUNC0(regmap)) {
		error = FUNC1(regmap);
		FUNC2(dev, "Failed to allocate register map: %d\n", error);
		return error;
	}

	config.dev = &i2c->dev;
	config.regmap = regmap;

	config.of_node = dev->of_node;
	config.init_data = FUNC5(dev, dev->of_node,
						      &sy8106a_reg);

	if (!config.init_data)
		return -ENOMEM;

	/* Ensure GO_BIT is enabled when probing */
	error = FUNC7(regmap, SY8106A_REG_VOUT1_SEL, &reg);
	if (error)
		return error;

	if (!(reg & SY8106A_GO_BIT)) {
		vsel = (fixed_voltage / 1000 - SY8106A_MIN_MV) /
		       SY8106A_STEP_MV;

		error = FUNC8(regmap, SY8106A_REG_VOUT1_SEL,
				     vsel | SY8106A_GO_BIT);
		if (error)
			return error;
	}

	/* Probe regulator */
	rdev = FUNC4(&i2c->dev, &sy8106a_reg, &config);
	if (FUNC0(rdev)) {
		error = FUNC1(rdev);
		FUNC2(&i2c->dev, "Failed to register SY8106A regulator: %d\n", error);
		return error;
	}

	return 0;
}