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
struct watchdog_device {int min_timeout; unsigned long max_hw_heartbeat_ms; struct device* parent; int /*<<< orphan*/  timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct device {int dummy; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct ls1x_wdt_drvdata {unsigned long clk_rate; struct watchdog_device wdt; int /*<<< orphan*/  clk; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_HEARTBEAT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long U32_MAX ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ ) ; 
 struct ls1x_wdt_drvdata* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct device*,struct watchdog_device*) ; 
 int /*<<< orphan*/  heartbeat ; 
 int /*<<< orphan*/  ls1x_clk_disable_unprepare ; 
 int /*<<< orphan*/  ls1x_wdt_info ; 
 int /*<<< orphan*/  ls1x_wdt_ops ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct ls1x_wdt_drvdata*) ; 
 int /*<<< orphan*/  FUNC12 (struct watchdog_device*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct watchdog_device*,struct ls1x_wdt_drvdata*) ; 
 int /*<<< orphan*/  FUNC14 (struct watchdog_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct ls1x_wdt_drvdata *drvdata;
	struct watchdog_device *ls1x_wdt;
	unsigned long clk_rate;
	int err;

	drvdata = FUNC8(dev, sizeof(*drvdata), GFP_KERNEL);
	if (!drvdata)
		return -ENOMEM;

	drvdata->base = FUNC9(pdev, 0);
	if (FUNC0(drvdata->base))
		return FUNC1(drvdata->base);

	drvdata->clk = FUNC7(dev, pdev->name);
	if (FUNC0(drvdata->clk))
		return FUNC1(drvdata->clk);

	err = FUNC3(drvdata->clk);
	if (err) {
		FUNC4(dev, "clk enable failed\n");
		return err;
	}
	err = FUNC6(dev, ls1x_clk_disable_unprepare,
				       drvdata->clk);
	if (err)
		return err;

	clk_rate = FUNC2(drvdata->clk);
	if (!clk_rate)
		return -EINVAL;
	drvdata->clk_rate = clk_rate;

	ls1x_wdt = &drvdata->wdt;
	ls1x_wdt->info = &ls1x_wdt_info;
	ls1x_wdt->ops = &ls1x_wdt_ops;
	ls1x_wdt->timeout = DEFAULT_HEARTBEAT;
	ls1x_wdt->min_timeout = 1;
	ls1x_wdt->max_hw_heartbeat_ms = U32_MAX / clk_rate * 1000;
	ls1x_wdt->parent = dev;

	FUNC12(ls1x_wdt, heartbeat, dev);
	FUNC14(ls1x_wdt, nowayout);
	FUNC13(ls1x_wdt, drvdata);

	err = FUNC10(dev, &drvdata->wdt);
	if (err)
		return err;

	FUNC11(pdev, drvdata);

	FUNC5(dev, "Loongson1 Watchdog driver registered\n");

	return 0;
}