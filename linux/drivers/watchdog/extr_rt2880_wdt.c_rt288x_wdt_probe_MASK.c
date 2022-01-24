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
struct TYPE_6__ {int max_timeout; struct device* parent; int /*<<< orphan*/  bootstatus; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int RALINK_WDT_PRESCALE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rt288x_wdt_base ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  rt288x_wdt_clk ; 
 TYPE_1__ rt288x_wdt_dev ; 
 int rt288x_wdt_freq ; 
 int /*<<< orphan*/  rt288x_wdt_reset ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int,struct device*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	int ret;

	rt288x_wdt_base = FUNC5(pdev, 0);
	if (FUNC0(rt288x_wdt_base))
		return FUNC1(rt288x_wdt_base);

	rt288x_wdt_clk = FUNC4(dev, NULL);
	if (FUNC0(rt288x_wdt_clk))
		return FUNC1(rt288x_wdt_clk);

	rt288x_wdt_reset = FUNC6(dev, NULL);
	if (!FUNC0(rt288x_wdt_reset))
		FUNC8(rt288x_wdt_reset);

	rt288x_wdt_freq = FUNC2(rt288x_wdt_clk) / RALINK_WDT_PRESCALE;

	rt288x_wdt_dev.bootstatus = FUNC9();
	rt288x_wdt_dev.max_timeout = (0xfffful / rt288x_wdt_freq);
	rt288x_wdt_dev.parent = dev;

	FUNC10(&rt288x_wdt_dev, rt288x_wdt_dev.max_timeout,
			      dev);
	FUNC11(&rt288x_wdt_dev, nowayout);

	FUNC12(&rt288x_wdt_dev);
	ret = FUNC7(dev, &rt288x_wdt_dev);
	if (!ret)
		FUNC3(dev, "Initialized\n");

	return 0;
}