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
struct TYPE_8__ {void* timeout; struct device* parent; int /*<<< orphan*/  min_timeout; void* max_timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct sunxi_wdt_dev {TYPE_1__ wdt_dev; int /*<<< orphan*/  wdt_base; int /*<<< orphan*/  wdt_regs; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* WDT_MAX_TIMEOUT ; 
 int /*<<< orphan*/  WDT_MIN_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,void*,int /*<<< orphan*/ ) ; 
 struct sunxi_wdt_dev* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  sunxi_wdt_info ; 
 int /*<<< orphan*/  sunxi_wdt_ops ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  timeout ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,struct sunxi_wdt_dev*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct sunxi_wdt_dev *sunxi_wdt;
	int err;

	sunxi_wdt = FUNC3(dev, sizeof(*sunxi_wdt), GFP_KERNEL);
	if (!sunxi_wdt)
		return -EINVAL;

	sunxi_wdt->wdt_regs = FUNC6(dev);
	if (!sunxi_wdt->wdt_regs)
		return -ENODEV;

	sunxi_wdt->wdt_base = FUNC4(pdev, 0);
	if (FUNC0(sunxi_wdt->wdt_base))
		return FUNC1(sunxi_wdt->wdt_base);

	sunxi_wdt->wdt_dev.info = &sunxi_wdt_info;
	sunxi_wdt->wdt_dev.ops = &sunxi_wdt_ops;
	sunxi_wdt->wdt_dev.timeout = WDT_MAX_TIMEOUT;
	sunxi_wdt->wdt_dev.max_timeout = WDT_MAX_TIMEOUT;
	sunxi_wdt->wdt_dev.min_timeout = WDT_MIN_TIMEOUT;
	sunxi_wdt->wdt_dev.parent = dev;

	FUNC9(&sunxi_wdt->wdt_dev, timeout, dev);
	FUNC11(&sunxi_wdt->wdt_dev, nowayout);
	FUNC12(&sunxi_wdt->wdt_dev, 128);

	FUNC10(&sunxi_wdt->wdt_dev, sunxi_wdt);

	FUNC7(&sunxi_wdt->wdt_dev);

	FUNC13(&sunxi_wdt->wdt_dev);
	err = FUNC5(dev, &sunxi_wdt->wdt_dev);
	if (FUNC8(err))
		return err;

	FUNC2(dev, "Watchdog enabled (timeout=%d sec, nowayout=%d)",
		 sunxi_wdt->wdt_dev.timeout, nowayout);

	return 0;
}