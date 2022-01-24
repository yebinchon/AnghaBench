#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct TYPE_6__ {scalar_t__ platform_data; } ;
struct i2c_client {int irq; TYPE_1__ dev; } ;
struct da9211 {int chip_irq; TYPE_1__* dev; scalar_t__ pdata; int /*<<< orphan*/  chip_id; scalar_t__ regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9211 ; 
#define  DA9211_DEVICE_ID 130 
 int /*<<< orphan*/  DA9211_REG_DEVICE_ID ; 
 int /*<<< orphan*/  DA9213 ; 
#define  DA9213_DEVICE_ID 129 
 int /*<<< orphan*/  DA9215 ; 
#define  DA9215_DEVICE_ID 128 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  da9211_irq_handler ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  da9211_regmap_config ; 
 int FUNC3 (struct da9211*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 struct da9211* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct da9211*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct da9211*) ; 
 int FUNC10 (scalar_t__,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *i2c,
		const struct i2c_device_id *id)
{
	struct da9211 *chip;
	int error, ret;
	unsigned int data;

	chip = FUNC6(&i2c->dev, sizeof(struct da9211), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	chip->dev = &i2c->dev;
	chip->regmap = FUNC7(i2c, &da9211_regmap_config);
	if (FUNC0(chip->regmap)) {
		error = FUNC1(chip->regmap);
		FUNC4(chip->dev, "Failed to allocate register map: %d\n",
			error);
		return error;
	}

	FUNC9(i2c, chip);

	chip->pdata = i2c->dev.platform_data;

	ret = FUNC10(chip->regmap, DA9211_REG_DEVICE_ID, &data);
	if (ret < 0) {
		FUNC4(chip->dev, "Failed to read DEVICE_ID reg: %d\n", ret);
		return ret;
	}

	switch (data) {
	case DA9211_DEVICE_ID:
		chip->chip_id = DA9211;
		break;
	case DA9213_DEVICE_ID:
		chip->chip_id = DA9213;
		break;
	case DA9215_DEVICE_ID:
		chip->chip_id = DA9215;
		break;
	default:
		FUNC4(chip->dev, "Unsupported device id = 0x%x.\n", data);
		return -ENODEV;
	}

	if (!chip->pdata)
		chip->pdata = FUNC2(chip->dev);

	if (FUNC0(chip->pdata)) {
		FUNC4(chip->dev, "No regulators defined for the platform\n");
		return FUNC1(chip->pdata);
	}

	chip->chip_irq = i2c->irq;

	if (chip->chip_irq != 0) {
		ret = FUNC8(chip->dev, chip->chip_irq, NULL,
					da9211_irq_handler,
					IRQF_TRIGGER_LOW|IRQF_ONESHOT,
					"da9211", chip);
		if (ret != 0) {
			FUNC4(chip->dev, "Failed to request IRQ: %d\n",
				chip->chip_irq);
			return ret;
		}
	} else {
		FUNC5(chip->dev, "No IRQ configured\n");
	}

	ret = FUNC3(chip);

	if (ret < 0)
		FUNC4(chip->dev, "Failed to initialize regulator: %d\n", ret);

	return ret;
}