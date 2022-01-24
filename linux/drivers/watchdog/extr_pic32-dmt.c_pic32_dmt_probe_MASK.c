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
struct watchdog_device {int /*<<< orphan*/  bootstatus; int /*<<< orphan*/  timeout; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct pic32_dmt {int /*<<< orphan*/  clk; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WATCHDOG_NOWAYOUT ; 
 int /*<<< orphan*/  WDIOF_CARDRESET ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ *) ; 
 struct pic32_dmt* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,struct watchdog_device*) ; 
 int /*<<< orphan*/  pic32_clk_disable_unprepare ; 
 scalar_t__ FUNC10 (struct pic32_dmt*) ; 
 int /*<<< orphan*/  FUNC11 (struct pic32_dmt*) ; 
 struct watchdog_device pic32_dmt_wdd ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct watchdog_device*,struct pic32_dmt*) ; 
 int /*<<< orphan*/  FUNC14 (struct watchdog_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	int ret;
	struct pic32_dmt *dmt;
	struct watchdog_device *wdd = &pic32_dmt_wdd;

	dmt = FUNC7(dev, sizeof(*dmt), GFP_KERNEL);
	if (!dmt)
		return -ENOMEM;

	dmt->regs = FUNC8(pdev, 0);
	if (FUNC0(dmt->regs))
		return FUNC1(dmt->regs);

	dmt->clk = FUNC6(dev, NULL);
	if (FUNC0(dmt->clk)) {
		FUNC3(dev, "clk not found\n");
		return FUNC1(dmt->clk);
	}

	ret = FUNC2(dmt->clk);
	if (ret)
		return ret;
	ret = FUNC5(dev, pic32_clk_disable_unprepare,
				       dmt->clk);
	if (ret)
		return ret;

	wdd->timeout = FUNC11(dmt);
	if (!wdd->timeout) {
		FUNC3(dev, "failed to read watchdog register timeout\n");
		return -EINVAL;
	}

	FUNC4(dev, "timeout %d\n", wdd->timeout);

	wdd->bootstatus = FUNC10(dmt) ? WDIOF_CARDRESET : 0;

	FUNC14(wdd, WATCHDOG_NOWAYOUT);
	FUNC13(wdd, dmt);

	ret = FUNC9(dev, wdd);
	if (ret)
		return ret;

	FUNC12(pdev, wdd);
	return 0;
}