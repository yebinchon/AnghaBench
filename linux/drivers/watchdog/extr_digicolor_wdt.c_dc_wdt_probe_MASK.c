#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct dc_wdt {int /*<<< orphan*/  lock; int /*<<< orphan*/  clk; int /*<<< orphan*/  base; } ;
struct TYPE_7__ {int max_timeout; int timeout; struct device* parent; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int U32_MAX ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ dc_wdt_wdd ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 struct dc_wdt* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timeout ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct dc_wdt*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct dc_wdt *wdt;

	wdt = FUNC4(dev, sizeof(struct dc_wdt), GFP_KERNEL);
	if (!wdt)
		return -ENOMEM;

	wdt->base = FUNC5(pdev, 0);
	if (FUNC0(wdt->base))
		return FUNC1(wdt->base);

	wdt->clk = FUNC3(dev, NULL);
	if (FUNC0(wdt->clk))
		return FUNC1(wdt->clk);
	dc_wdt_wdd.max_timeout = U32_MAX / FUNC2(wdt->clk);
	dc_wdt_wdd.timeout = dc_wdt_wdd.max_timeout;
	dc_wdt_wdd.parent = dev;

	FUNC7(&wdt->lock);

	FUNC9(&dc_wdt_wdd, wdt);
	FUNC10(&dc_wdt_wdd, 128);
	FUNC8(&dc_wdt_wdd, timeout, dev);
	FUNC11(&dc_wdt_wdd);
	return FUNC6(dev, &dc_wdt_wdd);
}