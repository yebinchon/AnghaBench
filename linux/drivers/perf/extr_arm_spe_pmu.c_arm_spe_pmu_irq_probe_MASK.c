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
struct arm_spe_pmu {int irq; int /*<<< orphan*/  supported_cpus; struct platform_device* pdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct platform_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct arm_spe_pmu *spe_pmu)
{
	struct platform_device *pdev = spe_pmu->pdev;
	int irq = FUNC3(pdev, 0);

	if (irq < 0) {
		FUNC0(&pdev->dev, "failed to get IRQ (%d)\n", irq);
		return -ENXIO;
	}

	if (!FUNC2(irq)) {
		FUNC0(&pdev->dev, "expected PPI but got SPI (%d)\n", irq);
		return -EINVAL;
	}

	if (FUNC1(irq, &spe_pmu->supported_cpus)) {
		FUNC0(&pdev->dev, "failed to get PPI partition (%d)\n", irq);
		return -EINVAL;
	}

	spe_pmu->irq = irq;
	return 0;
}