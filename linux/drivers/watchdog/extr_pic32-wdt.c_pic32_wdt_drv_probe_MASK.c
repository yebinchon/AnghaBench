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
struct pic32_wdt {int /*<<< orphan*/  clk; int /*<<< orphan*/  rst_base; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PIC32_BASE_RESET ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WATCHDOG_NOWAYOUT ; 
 int /*<<< orphan*/  WDIOF_CARDRESET ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ ,int) ; 
 struct pic32_wdt* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct device*,struct watchdog_device*) ; 
 int /*<<< orphan*/  pic32_clk_disable_unprepare ; 
 struct watchdog_device pic32_wdd ; 
 scalar_t__ FUNC11 (struct pic32_wdt*) ; 
 int /*<<< orphan*/  FUNC12 (struct pic32_wdt*,struct device*) ; 
 scalar_t__ FUNC13 (struct pic32_wdt*) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct watchdog_device*,struct pic32_wdt*) ; 
 int /*<<< orphan*/  FUNC16 (struct watchdog_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	int ret;
	struct watchdog_device *wdd = &pic32_wdd;
	struct pic32_wdt *wdt;

	wdt = FUNC8(dev, sizeof(*wdt), GFP_KERNEL);
	if (!wdt)
		return -ENOMEM;

	wdt->regs = FUNC9(pdev, 0);
	if (FUNC0(wdt->regs))
		return FUNC1(wdt->regs);

	wdt->rst_base = FUNC7(dev, PIC32_BASE_RESET, 0x10);
	if (!wdt->rst_base)
		return -ENOMEM;

	wdt->clk = FUNC6(dev, NULL);
	if (FUNC0(wdt->clk)) {
		FUNC3(dev, "clk not found\n");
		return FUNC1(wdt->clk);
	}

	ret = FUNC2(wdt->clk);
	if (ret) {
		FUNC3(dev, "clk enable failed\n");
		return ret;
	}
	ret = FUNC5(dev, pic32_clk_disable_unprepare,
				       wdt->clk);
	if (ret)
		return ret;

	if (FUNC13(wdt)) {
		FUNC3(dev, "windowed-clear mode is not supported.\n");
		return -ENODEV;
	}

	wdd->timeout = FUNC12(wdt, dev);
	if (!wdd->timeout) {
		FUNC3(dev, "failed to read watchdog register timeout\n");
		return -EINVAL;
	}

	FUNC4(dev, "timeout %d\n", wdd->timeout);

	wdd->bootstatus = FUNC11(wdt) ? WDIOF_CARDRESET : 0;

	FUNC16(wdd, WATCHDOG_NOWAYOUT);
	FUNC15(wdd, wdt);

	ret = FUNC10(dev, wdd);
	if (ret)
		return ret;

	FUNC14(pdev, wdd);

	return 0;
}