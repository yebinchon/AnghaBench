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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct regmap_irq_chip_data {int dummy; } ;
struct regmap {int dummy; } ;
struct pmic_thermal_data {int num_maps; TYPE_2__* maps; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct intel_soc_pmic {struct regmap_irq_chip_data* irq_chip_data; struct regmap* regmap; } ;
struct TYPE_6__ {scalar_t__ driver_data; } ;
struct TYPE_5__ {int num_trips; TYPE_1__* trip_config; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq_en_mask; int /*<<< orphan*/  irq_en; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 struct intel_soc_pmic* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct platform_device*) ; 
 TYPE_3__* FUNC3 (struct platform_device*) ; 
 int FUNC4 (struct platform_device*,int) ; 
 int /*<<< orphan*/  pmic_thermal_irq_handler ; 
 int FUNC5 (struct regmap_irq_chip_data*,int) ; 
 int FUNC6 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct regmap_irq_chip_data *regmap_irq_chip;
	struct pmic_thermal_data *thermal_data;
	int ret, irq, virq, i, j, pmic_irq_count;
	struct intel_soc_pmic *pmic;
	struct regmap *regmap;
	struct device *dev;
	u16 reg;
	u8 mask;

	dev = &pdev->dev;
	pmic = FUNC1(pdev->dev.parent);
	if (!pmic) {
		FUNC0(dev, "Failed to get struct intel_soc_pmic pointer\n");
		return -ENODEV;
	}

	thermal_data = (struct pmic_thermal_data *)
				FUNC3(pdev)->driver_data;
	if (!thermal_data) {
		FUNC0(dev, "No thermal data initialized!!\n");
		return -ENODEV;
	}

	regmap = pmic->regmap;
	regmap_irq_chip = pmic->irq_chip_data;

	pmic_irq_count = 0;
	while ((irq = FUNC4(pdev, pmic_irq_count)) != -ENXIO) {
		virq = FUNC5(regmap_irq_chip, irq);
		if (virq < 0) {
			FUNC0(dev, "failed to get virq by irq %d\n", irq);
			return virq;
		}

		ret = FUNC2(&pdev->dev, virq,
				NULL, pmic_thermal_irq_handler,
				IRQF_ONESHOT, "pmic_thermal", pdev);

		if (ret) {
			FUNC0(dev, "request irq(%d) failed: %d\n", virq, ret);
			return ret;
		}
		pmic_irq_count++;
	}

	/* Enable thermal interrupts */
	for (i = 0; i < thermal_data->num_maps; i++) {
		for (j = 0; j < thermal_data->maps[i].num_trips; j++) {
			reg = thermal_data->maps[i].trip_config[j].irq_en;
			mask = thermal_data->maps[i].trip_config[j].irq_en_mask;
			ret = FUNC6(regmap, reg, mask, 0x00);
			if (ret)
				return ret;
		}
	}

	return 0;
}