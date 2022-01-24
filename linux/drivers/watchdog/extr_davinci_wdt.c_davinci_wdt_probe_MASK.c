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
struct watchdog_device {int min_timeout; int /*<<< orphan*/  timeout; struct device* parent; int /*<<< orphan*/  max_timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct davinci_wdt_device {int /*<<< orphan*/  base; struct watchdog_device wdd; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_HEARTBEAT ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_HEARTBEAT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  davinci_clk_disable_unprepare ; 
 int /*<<< orphan*/  davinci_wdt_info ; 
 int /*<<< orphan*/  davinci_wdt_ops ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ *) ; 
 struct davinci_wdt_device* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,struct watchdog_device*) ; 
 int /*<<< orphan*/  heartbeat ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct davinci_wdt_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct watchdog_device*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct watchdog_device*,struct davinci_wdt_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct watchdog_device*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct watchdog_device*,int) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	int ret = 0;
	struct device *dev = &pdev->dev;
	struct watchdog_device *wdd;
	struct davinci_wdt_device *davinci_wdt;

	davinci_wdt = FUNC7(dev, sizeof(*davinci_wdt), GFP_KERNEL);
	if (!davinci_wdt)
		return -ENOMEM;

	davinci_wdt->clk = FUNC6(dev, NULL);

	if (FUNC0(davinci_wdt->clk)) {
		if (FUNC1(davinci_wdt->clk) != -EPROBE_DEFER)
			FUNC3(dev, "failed to get clock node\n");
		return FUNC1(davinci_wdt->clk);
	}

	ret = FUNC2(davinci_wdt->clk);
	if (ret) {
		FUNC3(dev, "failed to prepare clock\n");
		return ret;
	}
	ret = FUNC5(dev, davinci_clk_disable_unprepare,
				       davinci_wdt->clk);
	if (ret)
		return ret;

	FUNC10(pdev, davinci_wdt);

	wdd			= &davinci_wdt->wdd;
	wdd->info		= &davinci_wdt_info;
	wdd->ops		= &davinci_wdt_ops;
	wdd->min_timeout	= 1;
	wdd->max_timeout	= MAX_HEARTBEAT;
	wdd->timeout		= DEFAULT_HEARTBEAT;
	wdd->parent		= dev;

	FUNC11(wdd, heartbeat, dev);

	FUNC4(dev, "heartbeat %d sec\n", wdd->timeout);

	FUNC12(wdd, davinci_wdt);
	FUNC13(wdd, 1);
	FUNC14(wdd, 128);

	davinci_wdt->base = FUNC8(pdev, 0);
	if (FUNC0(davinci_wdt->base))
		return FUNC1(davinci_wdt->base);

	return FUNC9(dev, wdd);
}