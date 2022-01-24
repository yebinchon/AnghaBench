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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct exynos_pmu_context {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* pmu_init ) () ;} ;
struct TYPE_5__ {TYPE_3__* pmu_data; struct device* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct resource*) ; 
 TYPE_1__* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct device*) ; 
 TYPE_3__* FUNC7 (struct device*) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  pmu_base_addr ; 
 TYPE_1__* pmu_context ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct resource *res;

	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	pmu_base_addr = FUNC4(dev, res);
	if (FUNC0(pmu_base_addr))
		return FUNC1(pmu_base_addr);

	pmu_context = FUNC5(&pdev->dev,
			sizeof(struct exynos_pmu_context),
			GFP_KERNEL);
	if (!pmu_context)
		return -ENOMEM;
	pmu_context->dev = dev;
	pmu_context->pmu_data = FUNC7(dev);

	if (pmu_context->pmu_data && pmu_context->pmu_data->pmu_init)
		pmu_context->pmu_data->pmu_init();

	FUNC9(pdev, pmu_context);

	if (FUNC6(dev))
		FUNC3(dev, "Error populating children, reboot and poweroff might not work properly\n");

	FUNC2(dev, "Exynos PMU Driver probe done\n");
	return 0;
}