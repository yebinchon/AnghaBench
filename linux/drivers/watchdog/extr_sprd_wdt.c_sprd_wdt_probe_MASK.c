#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* timeout; void* max_timeout; int /*<<< orphan*/  min_timeout; struct device* parent; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct sprd_wdt {scalar_t__ irq; TYPE_1__ wdd; void* rtc_enable; void* enable; void* base; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_NO_SUSPEND ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 void* SPRD_WDT_MAX_TIMEOUT ; 
 int /*<<< orphan*/  SPRD_WDT_MIN_TIMEOUT ; 
 int /*<<< orphan*/  WATCHDOG_NOWAYOUT ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/  (*) (struct sprd_wdt*),struct sprd_wdt*) ; 
 void* FUNC4 (struct device*,char*) ; 
 struct sprd_wdt* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*) ; 
 int FUNC8 (struct device*,TYPE_1__*) ; 
 scalar_t__ FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct sprd_wdt*) ; 
 int /*<<< orphan*/  FUNC11 (struct sprd_wdt*) ; 
 int FUNC12 (struct sprd_wdt*) ; 
 int /*<<< orphan*/  sprd_wdt_info ; 
 int /*<<< orphan*/  sprd_wdt_isr ; 
 int /*<<< orphan*/  sprd_wdt_ops ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct sprd_wdt *wdt;
	int ret;

	wdt = FUNC5(dev, sizeof(*wdt), GFP_KERNEL);
	if (!wdt)
		return -ENOMEM;

	wdt->base = FUNC6(pdev, 0);
	if (FUNC0(wdt->base))
		return FUNC1(wdt->base);

	wdt->enable = FUNC4(dev, "enable");
	if (FUNC0(wdt->enable)) {
		FUNC2(dev, "can't get the enable clock\n");
		return FUNC1(wdt->enable);
	}

	wdt->rtc_enable = FUNC4(dev, "rtc_enable");
	if (FUNC0(wdt->rtc_enable)) {
		FUNC2(dev, "can't get the rtc enable clock\n");
		return FUNC1(wdt->rtc_enable);
	}

	wdt->irq = FUNC9(pdev, 0);
	if (wdt->irq < 0)
		return wdt->irq;

	ret = FUNC7(dev, wdt->irq, sprd_wdt_isr, IRQF_NO_SUSPEND,
			       "sprd-wdt", (void *)wdt);
	if (ret) {
		FUNC2(dev, "failed to register irq\n");
		return ret;
	}

	wdt->wdd.info = &sprd_wdt_info;
	wdt->wdd.ops = &sprd_wdt_ops;
	wdt->wdd.parent = dev;
	wdt->wdd.min_timeout = SPRD_WDT_MIN_TIMEOUT;
	wdt->wdd.max_timeout = SPRD_WDT_MAX_TIMEOUT;
	wdt->wdd.timeout = SPRD_WDT_MAX_TIMEOUT;

	ret = FUNC12(wdt);
	if (ret) {
		FUNC2(dev, "failed to enable wdt\n");
		return ret;
	}
	ret = FUNC3(dev, sprd_wdt_disable, wdt);
	if (ret) {
		FUNC2(dev, "Failed to add wdt disable action\n");
		return ret;
	}

	FUNC14(&wdt->wdd, WATCHDOG_NOWAYOUT);
	FUNC13(&wdt->wdd, 0, dev);

	ret = FUNC8(dev, &wdt->wdd);
	if (ret) {
		FUNC11(wdt);
		return ret;
	}
	FUNC10(pdev, wdt);

	return 0;
}