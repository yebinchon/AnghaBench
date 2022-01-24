#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct watchdog_device {int max_hw_heartbeat_ms; int /*<<< orphan*/  min_timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; struct device* parent; } ;
struct stm32_iwdg {int rate; TYPE_1__* data; struct watchdog_device wdd; int /*<<< orphan*/  regs; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int max_prescaler; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int PR_MIN ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int RLR_MAX ; 
 int RLR_MIN ; 
 int /*<<< orphan*/  WATCHDOG_NOWAYOUT ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct stm32_iwdg* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,struct watchdog_device*) ; 
 TYPE_1__* FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct stm32_iwdg*) ; 
 int FUNC9 (struct platform_device*,struct stm32_iwdg*) ; 
 int /*<<< orphan*/  stm32_iwdg_info ; 
 int /*<<< orphan*/  stm32_iwdg_ops ; 
 int /*<<< orphan*/  FUNC10 (struct watchdog_device*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct watchdog_device*,struct stm32_iwdg*) ; 
 int /*<<< orphan*/  FUNC12 (struct watchdog_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct watchdog_device *wdd;
	struct stm32_iwdg *wdt;
	int ret;

	wdt = FUNC4(dev, sizeof(*wdt), GFP_KERNEL);
	if (!wdt)
		return -ENOMEM;

	wdt->data = FUNC7(&pdev->dev);
	if (!wdt->data)
		return -ENODEV;

	/* This is the timer base. */
	wdt->regs = FUNC5(pdev, 0);
	if (FUNC1(wdt->regs)) {
		FUNC3(dev, "Could not get resource\n");
		return FUNC2(wdt->regs);
	}

	ret = FUNC9(pdev, wdt);
	if (ret)
		return ret;

	/* Initialize struct watchdog_device. */
	wdd = &wdt->wdd;
	wdd->parent = dev;
	wdd->info = &stm32_iwdg_info;
	wdd->ops = &stm32_iwdg_ops;
	wdd->min_timeout = FUNC0((RLR_MIN + 1) * PR_MIN, wdt->rate);
	wdd->max_hw_heartbeat_ms = ((RLR_MAX + 1) * wdt->data->max_prescaler *
				    1000) / wdt->rate;

	FUNC11(wdd, wdt);
	FUNC12(wdd, WATCHDOG_NOWAYOUT);
	FUNC10(wdd, 0, dev);

	ret = FUNC6(dev, wdd);
	if (ret)
		return ret;

	FUNC8(pdev, wdt);

	return 0;
}