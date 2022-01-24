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
struct slg51000 {int chip_irq; struct device* dev; struct gpio_desc* regmap; struct gpio_desc* cs_gpiod; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int irq; struct device dev; } ;
struct gpio_desc {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GPIOD_FLAGS_BIT_NONEXCLUSIVE ; 
 int GPIOD_OUT_HIGH ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_HIGH ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct gpio_desc* FUNC4 (struct device*,char*,int) ; 
 struct slg51000* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct gpio_desc* FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct slg51000*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct slg51000*) ; 
 int /*<<< orphan*/  FUNC9 (struct slg51000*) ; 
 int /*<<< orphan*/  slg51000_irq_handler ; 
 int /*<<< orphan*/  slg51000_regmap_config ; 
 int FUNC10 (struct slg51000*) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			      const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct slg51000 *chip;
	struct gpio_desc *cs_gpiod;
	int error, ret;

	chip = FUNC5(dev, sizeof(struct slg51000), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	cs_gpiod = FUNC4(dev, "dlg,cs",
					   GPIOD_OUT_HIGH |
						GPIOD_FLAGS_BIT_NONEXCLUSIVE);
	if (FUNC0(cs_gpiod))
		return FUNC1(cs_gpiod);

	if (cs_gpiod) {
		FUNC3(dev, "Found chip selector property\n");
		chip->cs_gpiod = cs_gpiod;
	}

	FUNC8(client, chip);
	chip->chip_irq = client->irq;
	chip->dev = dev;
	chip->regmap = FUNC6(client, &slg51000_regmap_config);
	if (FUNC0(chip->regmap)) {
		error = FUNC1(chip->regmap);
		FUNC2(dev, "Failed to allocate register map: %d\n",
			error);
		return error;
	}

	ret = FUNC10(chip);
	if (ret < 0) {
		FUNC2(chip->dev, "Failed to init regulator(%d)\n", ret);
		return ret;
	}

	FUNC9(chip);

	if (chip->chip_irq) {
		ret = FUNC7(dev, chip->chip_irq, NULL,
						slg51000_irq_handler,
						(IRQF_TRIGGER_HIGH |
						IRQF_ONESHOT),
						"slg51000-irq", chip);
		if (ret != 0) {
			FUNC2(dev, "Failed to request IRQ: %d\n",
				chip->chip_irq);
			return ret;
		}
	} else {
		FUNC3(dev, "No IRQ configured\n");
	}

	return ret;
}