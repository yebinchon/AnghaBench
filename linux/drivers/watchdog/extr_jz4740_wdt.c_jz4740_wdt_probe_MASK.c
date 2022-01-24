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
struct watchdog_device {int timeout; int min_timeout; int max_timeout; struct device* parent; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct jz4740_wdt_drvdata {struct watchdog_device wdt; int /*<<< orphan*/  rtc_clk; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int DEFAULT_HEARTBEAT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_HEARTBEAT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct jz4740_wdt_drvdata* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,struct watchdog_device*) ; 
 int heartbeat ; 
 int /*<<< orphan*/  jz4740_wdt_info ; 
 int /*<<< orphan*/  jz4740_wdt_ops ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC7 (struct watchdog_device*,struct jz4740_wdt_drvdata*) ; 
 int /*<<< orphan*/  FUNC8 (struct watchdog_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct jz4740_wdt_drvdata *drvdata;
	struct watchdog_device *jz4740_wdt;

	drvdata = FUNC4(dev, sizeof(struct jz4740_wdt_drvdata),
			       GFP_KERNEL);
	if (!drvdata)
		return -ENOMEM;

	if (heartbeat < 1 || heartbeat > MAX_HEARTBEAT)
		heartbeat = DEFAULT_HEARTBEAT;

	jz4740_wdt = &drvdata->wdt;
	jz4740_wdt->info = &jz4740_wdt_info;
	jz4740_wdt->ops = &jz4740_wdt_ops;
	jz4740_wdt->timeout = heartbeat;
	jz4740_wdt->min_timeout = 1;
	jz4740_wdt->max_timeout = MAX_HEARTBEAT;
	jz4740_wdt->parent = dev;
	FUNC8(jz4740_wdt, nowayout);
	FUNC7(jz4740_wdt, drvdata);

	drvdata->base = FUNC5(pdev, 0);
	if (FUNC0(drvdata->base))
		return FUNC1(drvdata->base);

	drvdata->rtc_clk = FUNC3(dev, "rtc");
	if (FUNC0(drvdata->rtc_clk)) {
		FUNC2(dev, "cannot find RTC clock\n");
		return FUNC1(drvdata->rtc_clk);
	}

	return FUNC6(dev, &drvdata->wdt);
}