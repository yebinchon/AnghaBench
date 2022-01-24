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
struct dwc3_exynos {int num_clks; size_t suspend_clk_idx; int /*<<< orphan*/  vdd10; int /*<<< orphan*/  vdd33; int /*<<< orphan*/ * clks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dwc3_exynos_remove_child ; 
 struct dwc3_exynos* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct dwc3_exynos	*exynos = FUNC2(pdev);
	int i;

	FUNC1(&pdev->dev, NULL, dwc3_exynos_remove_child);

	for (i = exynos->num_clks - 1; i >= 0; i--)
		FUNC0(exynos->clks[i]);

	if (exynos->suspend_clk_idx >= 0)
		FUNC0(exynos->clks[exynos->suspend_clk_idx]);

	FUNC3(exynos->vdd33);
	FUNC3(exynos->vdd10);

	return 0;
}