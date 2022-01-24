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
struct watchdog_device {struct device* parent; int /*<<< orphan*/  timeout; int /*<<< orphan*/  max_timeout; int /*<<< orphan*/  min_timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct resource {scalar_t__ start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct nic7018_wdt {scalar_t__ io_base; struct watchdog_device wdd; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  LOCK ; 
 int /*<<< orphan*/  UNLOCK ; 
 int /*<<< orphan*/  WDT_DEFAULT_TIMEOUT ; 
 int /*<<< orphan*/  WDT_MAX_TIMEOUT ; 
 int /*<<< orphan*/  WDT_MIN_TIMEOUT ; 
 scalar_t__ WDT_REG_LOCK ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct nic7018_wdt* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nic7018_wdd_info ; 
 int /*<<< orphan*/  nic7018_wdd_ops ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct nic7018_wdt*) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*) ; 
 int /*<<< orphan*/  timeout ; 
 int /*<<< orphan*/  FUNC8 (struct watchdog_device*,int /*<<< orphan*/ ,struct device*) ; 
 int FUNC9 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct watchdog_device*,struct nic7018_wdt*) ; 
 int /*<<< orphan*/  FUNC11 (struct watchdog_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct watchdog_device *wdd;
	struct nic7018_wdt *wdt;
	struct resource *io_rc;
	int ret;

	wdt = FUNC2(dev, sizeof(*wdt), GFP_KERNEL);
	if (!wdt)
		return -ENOMEM;

	FUNC6(pdev, wdt);

	io_rc = FUNC5(pdev, IORESOURCE_IO, 0);
	if (!io_rc) {
		FUNC1(dev, "missing IO resources\n");
		return -EINVAL;
	}

	if (!FUNC3(dev, io_rc->start, FUNC7(io_rc),
				 KBUILD_MODNAME)) {
		FUNC1(dev, "failed to get IO region\n");
		return -EBUSY;
	}

	wdt->io_base = io_rc->start;
	wdd = &wdt->wdd;
	wdd->info = &nic7018_wdd_info;
	wdd->ops = &nic7018_wdd_ops;
	wdd->min_timeout = WDT_MIN_TIMEOUT;
	wdd->max_timeout = WDT_MAX_TIMEOUT;
	wdd->timeout = WDT_DEFAULT_TIMEOUT;
	wdd->parent = dev;

	FUNC10(wdd, wdt);
	FUNC11(wdd, nowayout);
	FUNC8(wdd, timeout, dev);

	/* Unlock WDT register */
	FUNC4(UNLOCK, wdt->io_base + WDT_REG_LOCK);

	ret = FUNC9(wdd);
	if (ret) {
		FUNC4(LOCK, wdt->io_base + WDT_REG_LOCK);
		return ret;
	}

	FUNC0(dev, "io_base=0x%04X, timeout=%d, nowayout=%d\n",
		wdt->io_base, timeout, nowayout);
	return 0;
}