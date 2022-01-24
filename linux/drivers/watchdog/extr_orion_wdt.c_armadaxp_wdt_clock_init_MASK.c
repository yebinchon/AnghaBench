#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct orion_watchdog {int /*<<< orphan*/  clk; int /*<<< orphan*/  clk_rate; scalar_t__ reg; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int TIMER1_FIXED_ENABLE_BIT ; 
 scalar_t__ TIMER_CTRL ; 
 int WDT_AXP_FIXED_ENABLE_BIT ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev,
				   struct orion_watchdog *dev)
{
	int ret;
	u32 val;

	dev->clk = FUNC6(pdev->dev.of_node, "fixed");
	if (FUNC0(dev->clk))
		return FUNC1(dev->clk);
	ret = FUNC4(dev->clk);
	if (ret) {
		FUNC5(dev->clk);
		return ret;
	}

	/* Fix the wdt and timer1 clock freqency to 25MHz */
	val = WDT_AXP_FIXED_ENABLE_BIT | TIMER1_FIXED_ENABLE_BIT;
	FUNC2(dev->reg + TIMER_CTRL, val, val);

	dev->clk_rate = FUNC3(dev->clk);
	return 0;
}