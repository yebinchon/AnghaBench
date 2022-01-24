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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct hisi_pmu {int irq; } ;

/* Variables and functions */
 int IRQF_NOBALANCING ; 
 int IRQF_NO_THREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct hisi_pmu*) ; 
 int /*<<< orphan*/  hisi_hha_pmu_isr ; 
 int FUNC3 (struct platform_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hisi_pmu *hha_pmu,
				 struct platform_device *pdev)
{
	int irq, ret;

	/* Read and init IRQ */
	irq = FUNC3(pdev, 0);
	if (irq < 0)
		return irq;

	ret = FUNC2(&pdev->dev, irq, hisi_hha_pmu_isr,
			      IRQF_NOBALANCING | IRQF_NO_THREAD,
			      FUNC1(&pdev->dev), hha_pmu);
	if (ret < 0) {
		FUNC0(&pdev->dev,
			"Fail to request IRQ:%d ret:%d\n", irq, ret);
		return ret;
	}

	hha_pmu->irq = irq;

	return 0;
}