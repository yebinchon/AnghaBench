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
struct ti_lmu {struct regmap* regmap; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {struct regulator_dev* ena_gpiod; struct regmap* regmap; struct device* dev; } ;
struct regmap {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {int id; struct device dev; } ;
typedef  struct regulator_dev gpio_desc ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,...) ; 
 struct ti_lmu* FUNC3 (int /*<<< orphan*/ ) ; 
 struct regulator_dev* FUNC4 (struct device*,int /*<<< orphan*/ *,struct regulator_config*) ; 
 int /*<<< orphan*/  FUNC5 (struct regulator_dev*) ; 
 int /*<<< orphan*/ * lm363x_regulator_desc ; 
 struct regulator_dev* FUNC6 (struct device*,int) ; 
 int FUNC7 (struct regmap*,int) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct ti_lmu *lmu = FUNC3(pdev->dev.parent);
	struct regmap *regmap = lmu->regmap;
	struct regulator_config cfg = { };
	struct regulator_dev *rdev;
	struct device *dev = &pdev->dev;
	int id = pdev->id;
	struct gpio_desc *gpiod;
	int ret;

	cfg.dev = dev;
	cfg.regmap = regmap;

	/*
	 * LM3632 LDOs can be controlled by external pin.
	 * Register update is required if the pin is used.
	 */
	gpiod = FUNC6(dev, id);
	if (FUNC0(gpiod))
		return FUNC1(gpiod);

	if (gpiod) {
		cfg.ena_gpiod = gpiod;
		ret = FUNC7(regmap, id);
		if (ret) {
			FUNC5(gpiod);
			FUNC2(dev, "External pin err: %d\n", ret);
			return ret;
		}
	}

	rdev = FUNC4(dev, &lm363x_regulator_desc[id], &cfg);
	if (FUNC0(rdev)) {
		ret = FUNC1(rdev);
		FUNC2(dev, "[%d] regulator register err: %d\n", id, ret);
		return ret;
	}

	return 0;
}