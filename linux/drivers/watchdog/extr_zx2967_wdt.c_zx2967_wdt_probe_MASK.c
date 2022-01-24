#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  timeout; struct device* parent; int /*<<< orphan*/  min_timeout; int /*<<< orphan*/  max_timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct zx2967_wdt {TYPE_1__ wdt_device; struct reset_control* clock; struct reset_control* reg_base; } ;
struct reset_control {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct reset_control*) ; 
 int FUNC1 (struct reset_control*) ; 
 int /*<<< orphan*/  WATCHDOG_NOWAYOUT ; 
 int /*<<< orphan*/  ZX2967_WDT_CLK_FREQ ; 
 int /*<<< orphan*/  ZX2967_WDT_DEFAULT_TIMEOUT ; 
 int /*<<< orphan*/  ZX2967_WDT_MAX_TIMEOUT ; 
 int /*<<< orphan*/  ZX2967_WDT_MIN_TIMEOUT ; 
 int FUNC2 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC3 (struct reset_control*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ,struct reset_control*) ; 
 struct reset_control* FUNC7 (struct device*,int /*<<< orphan*/ *) ; 
 struct zx2967_wdt* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct reset_control* FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct reset_control* FUNC10 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct zx2967_wdt*) ; 
 int /*<<< orphan*/  FUNC13 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC14 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,struct zx2967_wdt*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zx2967_clk_disable_unprepare ; 
 int /*<<< orphan*/  zx2967_wdt_ident ; 
 int /*<<< orphan*/  zx2967_wdt_ops ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct zx2967_wdt *wdt;
	int ret;
	struct reset_control *rstc;

	wdt = FUNC8(dev, sizeof(*wdt), GFP_KERNEL);
	if (!wdt)
		return -ENOMEM;

	FUNC12(pdev, wdt);

	wdt->wdt_device.info = &zx2967_wdt_ident;
	wdt->wdt_device.ops = &zx2967_wdt_ops;
	wdt->wdt_device.timeout = ZX2967_WDT_DEFAULT_TIMEOUT;
	wdt->wdt_device.max_timeout = ZX2967_WDT_MAX_TIMEOUT;
	wdt->wdt_device.min_timeout = ZX2967_WDT_MIN_TIMEOUT;
	wdt->wdt_device.parent = dev;

	wdt->reg_base = FUNC9(pdev, 0);
	if (FUNC0(wdt->reg_base))
		return FUNC1(wdt->reg_base);

	FUNC18(dev);

	wdt->clock = FUNC7(dev, NULL);
	if (FUNC0(wdt->clock)) {
		FUNC4(dev, "failed to find watchdog clock source\n");
		return FUNC1(wdt->clock);
	}

	ret = FUNC2(wdt->clock);
	if (ret < 0) {
		FUNC4(dev, "failed to enable clock\n");
		return ret;
	}
	ret = FUNC6(dev, zx2967_clk_disable_unprepare,
				       wdt->clock);
	if (ret)
		return ret;
	FUNC3(wdt->clock, ZX2967_WDT_CLK_FREQ);

	rstc = FUNC10(dev, NULL);
	if (FUNC0(rstc)) {
		FUNC4(dev, "failed to get rstc");
		return FUNC1(rstc);
	}

	FUNC13(rstc);
	FUNC14(rstc);

	FUNC16(&wdt->wdt_device, wdt);
	FUNC15(&wdt->wdt_device,
			ZX2967_WDT_DEFAULT_TIMEOUT, dev);
	FUNC17(&wdt->wdt_device, WATCHDOG_NOWAYOUT);

	ret = FUNC11(dev, &wdt->wdt_device);
	if (ret)
		return ret;

	FUNC5(dev, "watchdog enabled (timeout=%d sec, nowayout=%d)",
		 wdt->wdt_device.timeout, WATCHDOG_NOWAYOUT);

	return 0;
}