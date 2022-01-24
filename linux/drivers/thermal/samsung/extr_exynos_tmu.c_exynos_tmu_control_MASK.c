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
struct platform_device {int dummy; } ;
struct exynos_tmu_data {int enabled; int /*<<< orphan*/  lock; int /*<<< orphan*/  clk; int /*<<< orphan*/  (* tmu_control ) (struct platform_device*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct exynos_tmu_data* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int) ; 

__attribute__((used)) static void FUNC6(struct platform_device *pdev, bool on)
{
	struct exynos_tmu_data *data = FUNC4(pdev);

	FUNC2(&data->lock);
	FUNC1(data->clk);
	data->tmu_control(pdev, on);
	data->enabled = on;
	FUNC0(data->clk);
	FUNC3(&data->lock);
}