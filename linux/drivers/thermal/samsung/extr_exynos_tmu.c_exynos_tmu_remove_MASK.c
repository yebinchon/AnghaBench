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
struct thermal_zone_device {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct exynos_tmu_data {int /*<<< orphan*/  regulator; int /*<<< orphan*/  clk_sec; int /*<<< orphan*/  clk; int /*<<< orphan*/  sclk; struct thermal_zone_device* tzd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int) ; 
 struct exynos_tmu_data* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct thermal_zone_device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct exynos_tmu_data *data = FUNC4(pdev);
	struct thermal_zone_device *tzd = data->tzd;

	FUNC6(&pdev->dev, tzd);
	FUNC3(pdev, false);

	FUNC1(data->sclk);
	FUNC2(data->clk);
	if (!FUNC0(data->clk_sec))
		FUNC2(data->clk_sec);

	if (!FUNC0(data->regulator))
		FUNC5(data->regulator);

	return 0;
}