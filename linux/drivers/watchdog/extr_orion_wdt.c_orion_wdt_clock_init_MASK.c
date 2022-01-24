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
struct orion_watchdog {int /*<<< orphan*/  clk; int /*<<< orphan*/  clk_rate; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev,
				struct orion_watchdog *dev)
{
	int ret;

	dev->clk = FUNC2(&pdev->dev, NULL);
	if (FUNC0(dev->clk))
		return FUNC1(dev->clk);
	ret = FUNC4(dev->clk);
	if (ret) {
		FUNC5(dev->clk);
		return ret;
	}

	dev->clk_rate = FUNC3(dev->clk);
	return 0;
}