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
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct hisi_pmu {int ccl_id; int /*<<< orphan*/  base; int /*<<< orphan*/  sccl_id; int /*<<< orphan*/  index_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev,
				   struct hisi_pmu *ddrc_pmu)
{
	struct resource *res;

	/*
	 * Use the SCCL_ID and DDRC channel ID to identify the
	 * DDRC PMU, while SCCL_ID is in MPIDR[aff2].
	 */
	if (FUNC3(&pdev->dev, "hisilicon,ch-id",
				     &ddrc_pmu->index_id)) {
		FUNC2(&pdev->dev, "Can not read ddrc channel-id!\n");
		return -EINVAL;
	}

	if (FUNC3(&pdev->dev, "hisilicon,scl-id",
				     &ddrc_pmu->sccl_id)) {
		FUNC2(&pdev->dev, "Can not read ddrc sccl-id!\n");
		return -EINVAL;
	}
	/* DDRC PMUs only share the same SCCL */
	ddrc_pmu->ccl_id = -1;

	res = FUNC5(pdev, IORESOURCE_MEM, 0);
	ddrc_pmu->base = FUNC4(&pdev->dev, res);
	if (FUNC0(ddrc_pmu->base)) {
		FUNC2(&pdev->dev, "ioremap failed for ddrc_pmu resource\n");
		return FUNC1(ddrc_pmu->base);
	}

	return 0;
}