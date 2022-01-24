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
struct watchdog_device {int min_timeout; int max_hw_heartbeat_ms; int /*<<< orphan*/  timeout; int /*<<< orphan*/  status; struct device* parent; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct dw_wdt {scalar_t__ rate; int /*<<< orphan*/  clk; struct watchdog_device wdd; int /*<<< orphan*/  rst; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_WDT_DEFAULT_SECONDS ; 
 int /*<<< orphan*/  DW_WDT_MAX_TOP ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WDOG_HW_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ *) ; 
 struct dw_wdt* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct dw_wdt*) ; 
 int /*<<< orphan*/  dw_wdt_ident ; 
 scalar_t__ FUNC10 (struct dw_wdt*) ; 
 int /*<<< orphan*/  dw_wdt_ops ; 
 int FUNC11 (struct dw_wdt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct dw_wdt*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct watchdog_device*,int /*<<< orphan*/ ,struct device*) ; 
 int FUNC16 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct watchdog_device*,struct dw_wdt*) ; 
 int /*<<< orphan*/  FUNC18 (struct watchdog_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct watchdog_device*,int) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct watchdog_device *wdd;
	struct dw_wdt *dw_wdt;
	int ret;

	dw_wdt = FUNC6(dev, sizeof(*dw_wdt), GFP_KERNEL);
	if (!dw_wdt)
		return -ENOMEM;

	dw_wdt->regs = FUNC7(pdev, 0);
	if (FUNC0(dw_wdt->regs))
		return FUNC1(dw_wdt->regs);

	dw_wdt->clk = FUNC5(dev, NULL);
	if (FUNC0(dw_wdt->clk))
		return FUNC1(dw_wdt->clk);

	ret = FUNC4(dw_wdt->clk);
	if (ret)
		return ret;

	dw_wdt->rate = FUNC3(dw_wdt->clk);
	if (dw_wdt->rate == 0) {
		ret = -EINVAL;
		goto out_disable_clk;
	}

	dw_wdt->rst = FUNC8(&pdev->dev, NULL);
	if (FUNC0(dw_wdt->rst)) {
		ret = FUNC1(dw_wdt->rst);
		goto out_disable_clk;
	}

	FUNC13(dw_wdt->rst);

	wdd = &dw_wdt->wdd;
	wdd->info = &dw_wdt_ident;
	wdd->ops = &dw_wdt_ops;
	wdd->min_timeout = 1;
	wdd->max_hw_heartbeat_ms =
		FUNC11(dw_wdt, DW_WDT_MAX_TOP) * 1000;
	wdd->parent = dev;

	FUNC17(wdd, dw_wdt);
	FUNC18(wdd, nowayout);
	FUNC15(wdd, 0, dev);

	/*
	 * If the watchdog is already running, use its already configured
	 * timeout. Otherwise use the default or the value provided through
	 * devicetree.
	 */
	if (FUNC10(dw_wdt)) {
		wdd->timeout = FUNC9(dw_wdt);
		FUNC14(WDOG_HW_RUNNING, &wdd->status);
	} else {
		wdd->timeout = DW_WDT_DEFAULT_SECONDS;
		FUNC15(wdd, 0, dev);
	}

	FUNC12(pdev, dw_wdt);

	FUNC19(wdd, 128);

	ret = FUNC16(wdd);
	if (ret)
		goto out_disable_clk;

	return 0;

out_disable_clk:
	FUNC2(dw_wdt->clk);
	return ret;
}