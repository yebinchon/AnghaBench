#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {TYPE_1__* id_entry; struct device dev; } ;
struct TYPE_8__ {int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; int /*<<< orphan*/  timeout; struct device* parent; } ;
struct max63xx_wdt {TYPE_5__* timeout; TYPE_2__ wdd; } ;
struct max63xx_timeout {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  tdelay; int /*<<< orphan*/  twd; } ;
struct TYPE_7__ {scalar_t__ driver_data; } ;

/* Variables and functions */
 int DEFAULT_HEARTBEAT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_HEARTBEAT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct max63xx_wdt* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,TYPE_2__*) ; 
 int heartbeat ; 
 int FUNC4 (struct platform_device*,struct max63xx_wdt*) ; 
 TYPE_5__* FUNC5 (struct max63xx_timeout*,int) ; 
 int /*<<< orphan*/  max63xx_wdt_info ; 
 int /*<<< orphan*/  max63xx_wdt_ops ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct max63xx_wdt*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct max63xx_wdt *wdt;
	struct max63xx_timeout *table;
	int err;

	wdt = FUNC2(dev, sizeof(*wdt), GFP_KERNEL);
	if (!wdt)
		return -ENOMEM;

	table = (struct max63xx_timeout *)pdev->id_entry->driver_data;

	if (heartbeat < 1 || heartbeat > MAX_HEARTBEAT)
		heartbeat = DEFAULT_HEARTBEAT;

	wdt->timeout = FUNC5(table, heartbeat);
	if (!wdt->timeout) {
		FUNC0(dev, "unable to satisfy %ds heartbeat request\n",
			heartbeat);
		return -EINVAL;
	}

	err = FUNC4(pdev, wdt);
	if (err)
		return err;

	FUNC6(pdev, &wdt->wdd);
	FUNC7(&wdt->wdd, wdt);

	wdt->wdd.parent = dev;
	wdt->wdd.timeout = wdt->timeout->twd;
	wdt->wdd.info = &max63xx_wdt_info;
	wdt->wdd.ops = &max63xx_wdt_ops;

	FUNC8(&wdt->wdd, nowayout);

	err = FUNC3(dev, &wdt->wdd);
	if (err)
		return err;

	FUNC1(dev, "using %ds heartbeat with %ds initial delay\n",
		 wdt->timeout->twd, wdt->timeout->tdelay);
	return 0;
}