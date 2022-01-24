#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wcove_tmu {int irq; int /*<<< orphan*/  regmap; TYPE_1__* dev; } ;
struct regmap_irq_chip_data {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct intel_soc_pmic {struct regmap_irq_chip_data* irq_chip_data_tmu; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  BXTWC_MTMUIRQ_REG ; 
 int /*<<< orphan*/  BXTWC_TMU_ALRM_MASK ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  bxt_wcove_tmu_irq_handler ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int,...) ; 
 struct intel_soc_pmic* FUNC1 (int /*<<< orphan*/ ) ; 
 struct wcove_tmu* FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct wcove_tmu*) ; 
 int FUNC4 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct wcove_tmu*) ; 
 int FUNC6 (struct regmap_irq_chip_data*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct intel_soc_pmic *pmic = FUNC1(pdev->dev.parent);
	struct regmap_irq_chip_data *regmap_irq_chip;
	struct wcove_tmu *wctmu;
	int ret, virq, irq;

	wctmu = FUNC2(&pdev->dev, sizeof(*wctmu), GFP_KERNEL);
	if (!wctmu)
		return -ENOMEM;

	wctmu->dev = &pdev->dev;
	wctmu->regmap = pmic->regmap;

	irq = FUNC4(pdev, 0);
	if (irq < 0)
		return irq;

	regmap_irq_chip = pmic->irq_chip_data_tmu;
	virq = FUNC6(regmap_irq_chip, irq);
	if (virq < 0) {
		FUNC0(&pdev->dev,
			"failed to get virtual interrupt=%d\n", irq);
		return virq;
	}

	ret = FUNC3(&pdev->dev, virq,
					NULL, bxt_wcove_tmu_irq_handler,
					IRQF_ONESHOT, "bxt_wcove_tmu", wctmu);
	if (ret) {
		FUNC0(&pdev->dev, "request irq failed: %d,virq: %d\n",
							ret, virq);
		return ret;
	}
	wctmu->irq = virq;

	/* Unmask TMU second level Wake & System alarm */
	FUNC7(wctmu->regmap, BXTWC_MTMUIRQ_REG,
				  BXTWC_TMU_ALRM_MASK, 0);

	FUNC5(pdev, wctmu);
	return 0;
}