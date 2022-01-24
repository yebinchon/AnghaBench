#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_8__ {int min_timeout; int max_hw_heartbeat_ms; int /*<<< orphan*/  status; int /*<<< orphan*/  timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; int /*<<< orphan*/ * parent; } ;
struct tangox_wdt_device {int clk_rate; TYPE_1__ wdt; scalar_t__ base; scalar_t__ clk; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_TIMEOUT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int U32_MAX ; 
 int /*<<< orphan*/  WDOG_HW_RUNNING ; 
 scalar_t__ WD_CONFIG ; 
 int WD_CONFIG_DISABLE ; 
 int /*<<< orphan*/  WD_CONFIG_XTAL_IN ; 
 scalar_t__ WD_COUNTER ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct tangox_wdt_device* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct tangox_wdt_device*) ; 
 int FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tangox_clk_disable_unprepare ; 
 int /*<<< orphan*/  tangox_wdt_info ; 
 int /*<<< orphan*/  tangox_wdt_ops ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  timeout ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,struct tangox_wdt_device*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct tangox_wdt_device *dev;
	u32 config;
	int err;

	dev = FUNC7(&pdev->dev, sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return -ENOMEM;

	dev->base = FUNC8(pdev, 0);
	if (FUNC0(dev->base))
		return FUNC1(dev->base);

	dev->clk = FUNC6(&pdev->dev, NULL);
	if (FUNC0(dev->clk))
		return FUNC1(dev->clk);

	err = FUNC3(dev->clk);
	if (err)
		return err;
	err = FUNC5(&pdev->dev,
				       tangox_clk_disable_unprepare, dev->clk);
	if (err)
		return err;

	dev->clk_rate = FUNC2(dev->clk);
	if (!dev->clk_rate)
		return -EINVAL;

	dev->wdt.parent = &pdev->dev;
	dev->wdt.info = &tangox_wdt_info;
	dev->wdt.ops = &tangox_wdt_ops;
	dev->wdt.timeout = DEFAULT_TIMEOUT;
	dev->wdt.min_timeout = 1;
	dev->wdt.max_hw_heartbeat_ms = (U32_MAX - 1) / dev->clk_rate;

	FUNC14(&dev->wdt, timeout, &pdev->dev);
	FUNC16(&dev->wdt, nowayout);
	FUNC15(&dev->wdt, dev);

	/*
	 * Deactivate counter if disable bit is set to avoid
	 * accidental reset.
	 */
	config = FUNC11(dev->base + WD_CONFIG);
	if (config & WD_CONFIG_DISABLE)
		FUNC19(0, dev->base + WD_COUNTER);

	FUNC19(WD_CONFIG_XTAL_IN, dev->base + WD_CONFIG);

	/*
	 * Mark as active and restart with configured timeout if
	 * already running.
	 */
	if (FUNC11(dev->base + WD_COUNTER)) {
		FUNC12(WDOG_HW_RUNNING, &dev->wdt.status);
		FUNC13(&dev->wdt);
	}

	FUNC17(&dev->wdt, 128);

	FUNC18(&dev->wdt);
	err = FUNC9(&pdev->dev, &dev->wdt);
	if (err)
		return err;

	FUNC10(pdev, dev);

	FUNC4(&pdev->dev, "SMP86xx/SMP87xx watchdog registered\n");

	return 0;
}