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
struct orion_watchdog {int clk_rate; int /*<<< orphan*/  clk; scalar_t__ reg; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TIMER_CTRL ; 
 int WDT_A370_RATIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WDT_A370_RATIO_SHIFT ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev,
				    struct orion_watchdog *dev)
{
	int ret;

	dev->clk = FUNC4(&pdev->dev, NULL);
	if (FUNC0(dev->clk))
		return FUNC1(dev->clk);
	ret = FUNC6(dev->clk);
	if (ret) {
		FUNC7(dev->clk);
		return ret;
	}

	/* Setup watchdog input clock */
	FUNC3(dev->reg + TIMER_CTRL,
			FUNC2(WDT_A370_RATIO_SHIFT),
			FUNC2(WDT_A370_RATIO_SHIFT));

	dev->clk_rate = FUNC5(dev->clk) / WDT_A370_RATIO;
	return 0;
}