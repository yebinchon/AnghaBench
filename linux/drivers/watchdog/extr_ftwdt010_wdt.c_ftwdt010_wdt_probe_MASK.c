#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_3__ {int min_timeout; int max_timeout; unsigned int timeout; struct device* parent; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct ftwdt010_wdt {int has_irq; TYPE_1__ wdd; scalar_t__ base; struct device* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FTWDT010_WDCR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 unsigned int WDCR_ENABLE ; 
 int WDT_CLOCK ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct ftwdt010_wdt* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct ftwdt010_wdt*) ; 
 int FUNC6 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  ftwdt010_wdt_info ; 
 int /*<<< orphan*/  ftwdt010_wdt_interrupt ; 
 int /*<<< orphan*/  ftwdt010_wdt_ops ; 
 int FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct ftwdt010_wdt*) ; 
 unsigned int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct ftwdt010_wdt *gwdt;
	unsigned int reg;
	int irq;
	int ret;

	gwdt = FUNC3(dev, sizeof(*gwdt), GFP_KERNEL);
	if (!gwdt)
		return -ENOMEM;

	gwdt->base = FUNC4(pdev, 0);
	if (FUNC0(gwdt->base))
		return FUNC1(gwdt->base);

	gwdt->dev = dev;
	gwdt->wdd.info = &ftwdt010_wdt_info;
	gwdt->wdd.ops = &ftwdt010_wdt_ops;
	gwdt->wdd.min_timeout = 1;
	gwdt->wdd.max_timeout = 0xFFFFFFFF / WDT_CLOCK;
	gwdt->wdd.parent = dev;

	/*
	 * If 'timeout-sec' unspecified in devicetree, assume a 13 second
	 * default.
	 */
	gwdt->wdd.timeout = 13U;
	FUNC10(&gwdt->wdd, 0, dev);

	reg = FUNC9(gwdt->base + FTWDT010_WDCR);
	if (reg & WDCR_ENABLE) {
		/* Watchdog was enabled by the bootloader, disable it. */
		reg &= ~WDCR_ENABLE;
		FUNC11(reg, gwdt->base + FTWDT010_WDCR);
	}

	irq = FUNC7(pdev, 0);
	if (irq) {
		ret = FUNC5(dev, irq, ftwdt010_wdt_interrupt, 0,
				       "watchdog bark", gwdt);
		if (ret)
			return ret;
		gwdt->has_irq = true;
	}

	ret = FUNC6(dev, &gwdt->wdd);
	if (ret)
		return ret;

	/* Set up platform driver data */
	FUNC8(pdev, gwdt);
	FUNC2(dev, "FTWDT010 watchdog driver enabled\n");

	return 0;
}