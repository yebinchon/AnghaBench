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
struct watchdog_device {int min_timeout; int timeout; struct device* parent; int /*<<< orphan*/  max_timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct imx7ulp_wdt_device {int /*<<< orphan*/  base; struct watchdog_device wdd; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int DEFAULT_TIMEOUT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_TIMEOUT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int WDOG_CLOCK_RATE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ *) ; 
 struct imx7ulp_wdt_device* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,struct watchdog_device*) ; 
 int /*<<< orphan*/  imx7ulp_wdt_action ; 
 int /*<<< orphan*/  imx7ulp_wdt_info ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  imx7ulp_wdt_ops ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct imx7ulp_wdt_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct watchdog_device*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct watchdog_device*,struct imx7ulp_wdt_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct imx7ulp_wdt_device *imx7ulp_wdt;
	struct device *dev = &pdev->dev;
	struct watchdog_device *wdog;
	int ret;

	imx7ulp_wdt = FUNC6(dev, sizeof(*imx7ulp_wdt), GFP_KERNEL);
	if (!imx7ulp_wdt)
		return -ENOMEM;

	FUNC10(pdev, imx7ulp_wdt);

	imx7ulp_wdt->base = FUNC7(pdev, 0);
	if (FUNC0(imx7ulp_wdt->base))
		return FUNC1(imx7ulp_wdt->base);

	imx7ulp_wdt->clk = FUNC5(dev, NULL);
	if (FUNC0(imx7ulp_wdt->clk)) {
		FUNC3(dev, "Failed to get watchdog clock\n");
		return FUNC1(imx7ulp_wdt->clk);
	}

	ret = FUNC2(imx7ulp_wdt->clk);
	if (ret)
		return ret;

	ret = FUNC4(dev, imx7ulp_wdt_action, imx7ulp_wdt->clk);
	if (ret)
		return ret;

	wdog = &imx7ulp_wdt->wdd;
	wdog->info = &imx7ulp_wdt_info;
	wdog->ops = &imx7ulp_wdt_ops;
	wdog->min_timeout = 1;
	wdog->max_timeout = MAX_TIMEOUT;
	wdog->parent = dev;
	wdog->timeout = DEFAULT_TIMEOUT;

	FUNC11(wdog, 0, dev);
	FUNC13(wdog);
	FUNC14(wdog);
	FUNC12(wdog, imx7ulp_wdt);
	FUNC9(imx7ulp_wdt->base, wdog->timeout * WDOG_CLOCK_RATE);

	return FUNC8(dev, wdog);
}