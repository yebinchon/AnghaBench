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
struct xgene_pmu {int /*<<< orphan*/  node; int /*<<< orphan*/  mcpmus; int /*<<< orphan*/  mcbpmus; int /*<<< orphan*/  iobpmus; int /*<<< orphan*/  l3cpmus; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct xgene_pmu* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xgene_pmu*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct xgene_pmu *xgene_pmu = FUNC1(&pdev->dev);

	FUNC2(xgene_pmu, &xgene_pmu->l3cpmus);
	FUNC2(xgene_pmu, &xgene_pmu->iobpmus);
	FUNC2(xgene_pmu, &xgene_pmu->mcbpmus);
	FUNC2(xgene_pmu, &xgene_pmu->mcpmus);
	FUNC0(CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE,
				    &xgene_pmu->node);

	return 0;
}