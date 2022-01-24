#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct regmap {int dummy; } ;
struct TYPE_16__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_5__ dev; } ;
struct TYPE_15__ {int min_timeout; int /*<<< orphan*/  timeout; int /*<<< orphan*/  status; TYPE_5__* parent; int /*<<< orphan*/  max_timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct armada_37xx_watchdog {TYPE_1__ wdt; int /*<<< orphan*/  clk_rate; struct regmap* clk; int /*<<< orphan*/  reg; struct regmap* cpu_misc; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  WATCHDOG_TIMEOUT ; 
 int /*<<< orphan*/  WDOG_HW_RUNNING ; 
 int /*<<< orphan*/  armada_37xx_wdt_info ; 
 scalar_t__ FUNC2 (struct armada_37xx_watchdog*) ; 
 int /*<<< orphan*/  armada_37xx_wdt_ops ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  armada_clk_disable_unprepare ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*) ; 
 int FUNC5 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (TYPE_5__*,int /*<<< orphan*/ ,struct regmap*) ; 
 struct regmap* FUNC8 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct armada_37xx_watchdog* FUNC10 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_5__*,TYPE_1__*) ; 
 scalar_t__ nowayout ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (struct resource*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct regmap* FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  timeout ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,struct armada_37xx_watchdog*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct armada_37xx_watchdog *dev;
	struct resource *res;
	struct regmap *regmap;
	int ret;

	dev = FUNC10(&pdev->dev, sizeof(struct armada_37xx_watchdog),
			   GFP_KERNEL);
	if (!dev)
		return -ENOMEM;

	dev->wdt.info = &armada_37xx_wdt_info;
	dev->wdt.ops = &armada_37xx_wdt_ops;

	regmap = FUNC16(pdev->dev.of_node,
						 "marvell,system-controller");
	if (FUNC0(regmap))
		return FUNC1(regmap);
	dev->cpu_misc = regmap;

	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENODEV;
	dev->reg = FUNC9(&pdev->dev, res->start, FUNC14(res));

	/* init clock */
	dev->clk = FUNC8(&pdev->dev, NULL);
	if (FUNC0(dev->clk))
		return FUNC1(dev->clk);

	ret = FUNC5(dev->clk);
	if (ret)
		return ret;
	ret = FUNC7(&pdev->dev,
				       armada_clk_disable_unprepare, dev->clk);
	if (ret)
		return ret;

	dev->clk_rate = FUNC4(dev->clk);
	if (!dev->clk_rate)
		return -EINVAL;

	/*
	 * Since the timeout in seconds is given as 32 bit unsigned int, and
	 * the counters hold 64 bit values, even after multiplication by clock
	 * rate the counter can hold timeout of UINT_MAX seconds.
	 */
	dev->wdt.min_timeout = 1;
	dev->wdt.max_timeout = UINT_MAX;
	dev->wdt.parent = &pdev->dev;

	/* default value, possibly override by module parameter or dtb */
	dev->wdt.timeout = WATCHDOG_TIMEOUT;
	FUNC17(&dev->wdt, timeout, &pdev->dev);

	FUNC13(pdev, &dev->wdt);
	FUNC18(&dev->wdt, dev);

	FUNC3(&dev->wdt, dev->wdt.timeout);

	if (FUNC2(dev))
		FUNC15(WDOG_HW_RUNNING, &dev->wdt.status);

	FUNC19(&dev->wdt, nowayout);
	FUNC20(&dev->wdt);
	ret = FUNC11(&pdev->dev, &dev->wdt);
	if (ret)
		return ret;

	FUNC6(&pdev->dev, "Initial timeout %d sec%s\n",
		 dev->wdt.timeout, nowayout ? ", nowayout" : "");

	return 0;
}