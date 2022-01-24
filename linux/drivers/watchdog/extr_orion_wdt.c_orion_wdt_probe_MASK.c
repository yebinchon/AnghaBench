#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct TYPE_11__ {int min_timeout; unsigned int timeout; unsigned int max_timeout; int /*<<< orphan*/  status; int /*<<< orphan*/ * parent; int /*<<< orphan*/ * ops; TYPE_8__* info; } ;
struct orion_watchdog {unsigned int clk_rate; int /*<<< orphan*/  clk; TYPE_2__ wdt; TYPE_1__* data; } ;
struct of_device_id {TYPE_1__* data; } ;
struct TYPE_12__ {int /*<<< orphan*/  options; } ;
struct TYPE_10__ {int (* clock_init ) (struct platform_device*,struct orion_watchdog*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WDIOF_PRETIMEOUT ; 
 int /*<<< orphan*/  WDOG_HW_RUNNING ; 
 unsigned int WDT_MAX_CYCLE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct orion_watchdog* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct orion_watchdog*) ; 
 int /*<<< orphan*/  heartbeat ; 
 scalar_t__ nowayout ; 
 struct of_device_id* FUNC5 (struct of_device_id*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (struct platform_device*,struct orion_watchdog*) ; 
 TYPE_8__ orion_wdt_info ; 
 int /*<<< orphan*/  orion_wdt_irq ; 
 struct of_device_id* orion_wdt_of_match_table ; 
 int /*<<< orphan*/  orion_wdt_ops ; 
 int /*<<< orphan*/  orion_wdt_pre_irq ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int FUNC9 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct platform_device*,struct orion_watchdog*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,struct orion_watchdog*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct orion_watchdog *dev;
	const struct of_device_id *match;
	unsigned int wdt_max_duration;	/* (seconds) */
	int ret, irq;

	dev = FUNC3(&pdev->dev, sizeof(struct orion_watchdog),
			   GFP_KERNEL);
	if (!dev)
		return -ENOMEM;

	match = FUNC5(orion_wdt_of_match_table, &pdev->dev);
	if (!match)
		/* Default legacy match */
		match = &orion_wdt_of_match_table[0];

	dev->wdt.info = &orion_wdt_info;
	dev->wdt.ops = &orion_wdt_ops;
	dev->wdt.min_timeout = 1;
	dev->data = match->data;

	ret = FUNC7(pdev, dev);
	if (ret)
		return ret;

	ret = dev->data->clock_init(pdev, dev);
	if (ret) {
		FUNC2(&pdev->dev, "cannot initialize clock\n");
		return ret;
	}

	wdt_max_duration = WDT_MAX_CYCLE_COUNT / dev->clk_rate;

	dev->wdt.timeout = wdt_max_duration;
	dev->wdt.max_timeout = wdt_max_duration;
	dev->wdt.parent = &pdev->dev;
	FUNC14(&dev->wdt, heartbeat, &pdev->dev);

	FUNC10(pdev, &dev->wdt);
	FUNC16(&dev->wdt, dev);

	/*
	 * Let's make sure the watchdog is fully stopped, unless it's
	 * explicitly enabled. This may be the case if the module was
	 * removed and re-inserted, or if the bootloader explicitly
	 * set a running watchdog before booting the kernel.
	 */
	if (!FUNC6(&dev->wdt))
		FUNC8(&dev->wdt);
	else
		FUNC12(WDOG_HW_RUNNING, &dev->wdt.status);

	/* Request the IRQ only after the watchdog is disabled */
	irq = FUNC9(pdev, 0);
	if (irq > 0) {
		/*
		 * Not all supported platforms specify an interrupt for the
		 * watchdog, so let's make it optional.
		 */
		ret = FUNC4(&pdev->dev, irq, orion_wdt_irq, 0,
				       pdev->name, dev);
		if (ret < 0) {
			FUNC2(&pdev->dev, "failed to request IRQ\n");
			goto disable_clk;
		}
	}

	/* Optional 2nd interrupt for pretimeout */
	irq = FUNC9(pdev, 1);
	if (irq > 0) {
		orion_wdt_info.options |= WDIOF_PRETIMEOUT;
		ret = FUNC4(&pdev->dev, irq, orion_wdt_pre_irq,
				       0, pdev->name, dev);
		if (ret < 0) {
			FUNC2(&pdev->dev, "failed to request IRQ\n");
			goto disable_clk;
		}
	}


	FUNC17(&dev->wdt, nowayout);
	ret = FUNC15(&dev->wdt);
	if (ret)
		goto disable_clk;

	FUNC11("Initial timeout %d sec%s\n",
		dev->wdt.timeout, nowayout ? ", nowayout" : "");
	return 0;

disable_clk:
	FUNC0(dev->clk);
	FUNC1(dev->clk);
	return ret;
}