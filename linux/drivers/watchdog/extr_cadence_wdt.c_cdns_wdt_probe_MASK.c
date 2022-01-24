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
struct watchdog_device {int /*<<< orphan*/  timeout; struct device* parent; int /*<<< orphan*/  max_timeout; int /*<<< orphan*/  min_timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct cdns_wdt {int /*<<< orphan*/  regs; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  ctrl_clksel; int /*<<< orphan*/  prescaler; int /*<<< orphan*/  clk; int /*<<< orphan*/  rst; struct watchdog_device cdns_wdt_device; } ;

/* Variables and functions */
 unsigned long CDNS_WDT_CLK_75MHZ ; 
 int /*<<< orphan*/  CDNS_WDT_DEFAULT_TIMEOUT ; 
 int /*<<< orphan*/  CDNS_WDT_MAX_TIMEOUT ; 
 int /*<<< orphan*/  CDNS_WDT_MIN_TIMEOUT ; 
 int /*<<< orphan*/  CDNS_WDT_PRESCALE_4096 ; 
 int /*<<< orphan*/  CDNS_WDT_PRESCALE_512 ; 
 int /*<<< orphan*/  CDNS_WDT_PRESCALE_SELECT_4096 ; 
 int /*<<< orphan*/  CDNS_WDT_PRESCALE_SELECT_512 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cdns_clk_disable_unprepare ; 
 int /*<<< orphan*/  cdns_wdt_info ; 
 int /*<<< orphan*/  cdns_wdt_irq_handler ; 
 int /*<<< orphan*/  cdns_wdt_ops ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ *) ; 
 struct cdns_wdt* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct platform_device*) ; 
 int FUNC11 (struct device*,struct watchdog_device*) ; 
 scalar_t__ nowayout ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct cdns_wdt*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct watchdog_device*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct watchdog_device*,struct cdns_wdt*) ; 
 int /*<<< orphan*/  FUNC18 (struct watchdog_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct watchdog_device*) ; 
 int /*<<< orphan*/  wdt_timeout ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	int ret, irq;
	unsigned long clock_f;
	struct cdns_wdt *wdt;
	struct watchdog_device *cdns_wdt_device;

	wdt = FUNC8(dev, sizeof(*wdt), GFP_KERNEL);
	if (!wdt)
		return -ENOMEM;

	cdns_wdt_device = &wdt->cdns_wdt_device;
	cdns_wdt_device->info = &cdns_wdt_info;
	cdns_wdt_device->ops = &cdns_wdt_ops;
	cdns_wdt_device->timeout = CDNS_WDT_DEFAULT_TIMEOUT;
	cdns_wdt_device->min_timeout = CDNS_WDT_MIN_TIMEOUT;
	cdns_wdt_device->max_timeout = CDNS_WDT_MAX_TIMEOUT;

	wdt->regs = FUNC9(pdev, 0);
	if (FUNC0(wdt->regs))
		return FUNC1(wdt->regs);

	/* Register the interrupt */
	wdt->rst = FUNC12(dev->of_node, "reset-on-timeout");
	irq = FUNC13(pdev, 0);
	if (!wdt->rst && irq >= 0) {
		ret = FUNC10(dev, irq, cdns_wdt_irq_handler, 0,
				       pdev->name, pdev);
		if (ret) {
			FUNC4(dev,
				"cannot register interrupt handler err=%d\n",
				ret);
			return ret;
		}
	}

	/* Initialize the members of cdns_wdt structure */
	cdns_wdt_device->parent = dev;

	FUNC16(cdns_wdt_device, wdt_timeout, dev);
	FUNC18(cdns_wdt_device, nowayout);
	FUNC19(cdns_wdt_device);
	FUNC17(cdns_wdt_device, wdt);

	wdt->clk = FUNC7(dev, NULL);
	if (FUNC0(wdt->clk)) {
		FUNC4(dev, "input clock not found\n");
		return FUNC1(wdt->clk);
	}

	ret = FUNC3(wdt->clk);
	if (ret) {
		FUNC4(dev, "unable to enable clock\n");
		return ret;
	}
	ret = FUNC6(dev, cdns_clk_disable_unprepare,
				       wdt->clk);
	if (ret)
		return ret;

	clock_f = FUNC2(wdt->clk);
	if (clock_f <= CDNS_WDT_CLK_75MHZ) {
		wdt->prescaler = CDNS_WDT_PRESCALE_512;
		wdt->ctrl_clksel = CDNS_WDT_PRESCALE_SELECT_512;
	} else {
		wdt->prescaler = CDNS_WDT_PRESCALE_4096;
		wdt->ctrl_clksel = CDNS_WDT_PRESCALE_SELECT_4096;
	}

	FUNC15(&wdt->io_lock);

	FUNC19(cdns_wdt_device);
	FUNC20(cdns_wdt_device);
	ret = FUNC11(dev, cdns_wdt_device);
	if (ret)
		return ret;
	FUNC14(pdev, wdt);

	FUNC5(dev, "Xilinx Watchdog Timer at %p with timeout %ds%s\n",
		 wdt->regs, cdns_wdt_device->timeout,
		 nowayout ? ", nowayout" : "");

	return 0;
}