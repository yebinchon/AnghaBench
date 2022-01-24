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
struct xgene_pmu {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct xgene_pmu*,struct platform_device*) ; 
 int FUNC1 (struct xgene_pmu*,struct platform_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct xgene_pmu *xgene_pmu,
				   struct platform_device *pdev)
{
	if (FUNC2(&pdev->dev))
		return FUNC0(xgene_pmu, pdev);
	return FUNC1(xgene_pmu, pdev);
}