#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_6__ {int min_timeout; int max_timeout; int timeout; int /*<<< orphan*/  status; struct device* parent; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct npcm_wdt {TYPE_1__ wdd; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WDOG_HW_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct npcm_wdt* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct npcm_wdt*) ; 
 int FUNC6 (struct device*,TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  npcm_wdt_info ; 
 int /*<<< orphan*/  npcm_wdt_interrupt ; 
 int /*<<< orphan*/  npcm_wdt_ops ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,struct device*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct npcm_wdt *wdt;
	int irq;
	int ret;

	wdt = FUNC3(dev, sizeof(*wdt), GFP_KERNEL);
	if (!wdt)
		return -ENOMEM;

	wdt->reg = FUNC4(pdev, 0);
	if (FUNC0(wdt->reg))
		return FUNC1(wdt->reg);

	irq = FUNC10(pdev, 0);
	if (irq < 0)
		return irq;

	wdt->wdd.info = &npcm_wdt_info;
	wdt->wdd.ops = &npcm_wdt_ops;
	wdt->wdd.min_timeout = 1;
	wdt->wdd.max_timeout = 2750;
	wdt->wdd.parent = dev;

	wdt->wdd.timeout = 86;
	FUNC12(&wdt->wdd, 0, dev);

	/* Ensure timeout is able to be represented by the hardware */
	FUNC8(&wdt->wdd, wdt->wdd.timeout);

	if (FUNC7(&wdt->wdd)) {
		/* Restart with the default or device-tree specified timeout */
		FUNC9(&wdt->wdd);
		FUNC11(WDOG_HW_RUNNING, &wdt->wdd.status);
	}

	ret = FUNC5(dev, irq, npcm_wdt_interrupt, 0, "watchdog",
			       wdt);
	if (ret)
		return ret;

	ret = FUNC6(dev, &wdt->wdd);
	if (ret)
		return ret;

	FUNC2(dev, "NPCM watchdog driver enabled\n");

	return 0;
}