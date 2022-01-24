#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct TYPE_13__ {int min_timeout; struct device* parent; int /*<<< orphan*/  bootstatus; int /*<<< orphan*/  timeout; int /*<<< orphan*/  max_timeout; } ;
struct s3c2410_wdt {scalar_t__ clock; TYPE_1__ wdt_device; scalar_t__ reg_base; scalar_t__ pmureg; TYPE_11__* drv_data; int /*<<< orphan*/  lock; struct device* dev; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct TYPE_12__ {int quirks; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int QUIRKS_HAVE_PMUREG ; 
 int /*<<< orphan*/  S3C2410_WATCHDOG_DEFAULT_TIME ; 
 scalar_t__ S3C2410_WTCON ; 
 unsigned int S3C2410_WTCON_ENABLE ; 
 unsigned int S3C2410_WTCON_INTEN ; 
 unsigned int S3C2410_WTCON_RSTEN ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 scalar_t__ FUNC6 (struct device*,char*) ; 
 struct s3c2410_wdt* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct platform_device*) ; 
 int /*<<< orphan*/  nowayout ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct s3c2410_wdt*) ; 
 unsigned int FUNC12 (scalar_t__) ; 
 TYPE_11__* FUNC13 (struct platform_device*) ; 
 TYPE_1__ s3c2410_wdd ; 
 int /*<<< orphan*/  FUNC14 (struct s3c2410_wdt*) ; 
 int FUNC15 (struct s3c2410_wdt*) ; 
 int /*<<< orphan*/  FUNC16 (struct s3c2410_wdt*) ; 
 int /*<<< orphan*/  s3c2410wdt_irq ; 
 int FUNC17 (struct s3c2410_wdt*,int) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 int FUNC19 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ tmr_atboot ; 
 int /*<<< orphan*/  tmr_margin ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,int /*<<< orphan*/ ,struct device*) ; 
 int FUNC25 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*,struct s3c2410_wdt*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC30(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct s3c2410_wdt *wdt;
	struct resource *wdt_irq;
	unsigned int wtcon;
	int started = 0;
	int ret;

	wdt = FUNC7(dev, sizeof(*wdt), GFP_KERNEL);
	if (!wdt)
		return -ENOMEM;

	wdt->dev = dev;
	FUNC22(&wdt->lock);
	wdt->wdt_device = s3c2410_wdd;

	wdt->drv_data = FUNC13(pdev);
	if (wdt->drv_data->quirks & QUIRKS_HAVE_PMUREG) {
		wdt->pmureg = FUNC23(dev->of_node,
						"samsung,syscon-phandle");
		if (FUNC0(wdt->pmureg)) {
			FUNC4(dev, "syscon regmap lookup failed.\n");
			return FUNC1(wdt->pmureg);
		}
	}

	wdt_irq = FUNC10(pdev, IORESOURCE_IRQ, 0);
	if (wdt_irq == NULL) {
		FUNC4(dev, "no irq resource specified\n");
		ret = -ENOENT;
		goto err;
	}

	/* get the memory region for the watchdog timer */
	wdt->reg_base = FUNC8(pdev, 0);
	if (FUNC0(wdt->reg_base)) {
		ret = FUNC1(wdt->reg_base);
		goto err;
	}

	wdt->clock = FUNC6(dev, "watchdog");
	if (FUNC0(wdt->clock)) {
		FUNC4(dev, "failed to find watchdog clock source\n");
		ret = FUNC1(wdt->clock);
		goto err;
	}

	ret = FUNC3(wdt->clock);
	if (ret < 0) {
		FUNC4(dev, "failed to enable clock\n");
		return ret;
	}

	wdt->wdt_device.min_timeout = 1;
	wdt->wdt_device.max_timeout = FUNC18(wdt->clock);

	ret = FUNC15(wdt);
	if (ret < 0) {
		FUNC4(dev, "failed to register cpufreq\n");
		goto err_clk;
	}

	FUNC26(&wdt->wdt_device, wdt);

	/* see if we can actually set the requested timer margin, and if
	 * not, try the default value */

	FUNC24(&wdt->wdt_device, tmr_margin, dev);
	ret = FUNC19(&wdt->wdt_device,
					wdt->wdt_device.timeout);
	if (ret) {
		started = FUNC19(&wdt->wdt_device,
					S3C2410_WATCHDOG_DEFAULT_TIME);

		if (started == 0)
			FUNC5(dev,
				 "tmr_margin value out of range, default %d used\n",
				 S3C2410_WATCHDOG_DEFAULT_TIME);
		else
			FUNC5(dev, "default timer value is out of range, cannot start\n");
	}

	ret = FUNC9(dev, wdt_irq->start, s3c2410wdt_irq, 0,
				pdev->name, pdev);
	if (ret != 0) {
		FUNC4(dev, "failed to install irq (%d)\n", ret);
		goto err_cpufreq;
	}

	FUNC27(&wdt->wdt_device, nowayout);
	FUNC28(&wdt->wdt_device, 128);

	wdt->wdt_device.bootstatus = FUNC16(wdt);
	wdt->wdt_device.parent = dev;

	ret = FUNC25(&wdt->wdt_device);
	if (ret)
		goto err_cpufreq;

	ret = FUNC17(wdt, false);
	if (ret < 0)
		goto err_unregister;

	if (tmr_atboot && started == 0) {
		FUNC5(dev, "starting watchdog timer\n");
		FUNC20(&wdt->wdt_device);
	} else if (!tmr_atboot) {
		/* if we're not enabling the watchdog, then ensure it is
		 * disabled if it has been left running from the bootloader
		 * or other source */

		FUNC21(&wdt->wdt_device);
	}

	FUNC11(pdev, wdt);

	/* print out a statement of readiness */

	wtcon = FUNC12(wdt->reg_base + S3C2410_WTCON);

	FUNC5(dev, "watchdog %sactive, reset %sabled, irq %sabled\n",
		 (wtcon & S3C2410_WTCON_ENABLE) ?  "" : "in",
		 (wtcon & S3C2410_WTCON_RSTEN) ? "en" : "dis",
		 (wtcon & S3C2410_WTCON_INTEN) ? "en" : "dis");

	return 0;

 err_unregister:
	FUNC29(&wdt->wdt_device);

 err_cpufreq:
	FUNC14(wdt);

 err_clk:
	FUNC2(wdt->clock);

 err:
	return ret;
}