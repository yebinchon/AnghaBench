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
struct watchdog_device {TYPE_1__* parent; void* max_timeout; scalar_t__ min_timeout; void* timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct retu_wdt_dev {int /*<<< orphan*/  ping_work; TYPE_1__* dev; struct retu_dev* rdev; } ;
struct retu_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* RETU_WDT_MAX_TIMER ; 
 int WATCHDOG_NOWAYOUT ; 
 struct retu_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,struct watchdog_device*) ; 
 int /*<<< orphan*/  retu_wdt_info ; 
 int /*<<< orphan*/  retu_wdt_ops ; 
 int /*<<< orphan*/  FUNC4 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct retu_wdt_dev*) ; 
 int /*<<< orphan*/  retu_wdt_ping_work ; 
 int FUNC6 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct watchdog_device*,struct retu_wdt_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct watchdog_device*,int) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct retu_dev *rdev = FUNC1(pdev->dev.parent);
	bool nowayout = WATCHDOG_NOWAYOUT;
	struct watchdog_device *retu_wdt;
	struct retu_wdt_dev *wdev;
	int ret;

	retu_wdt = FUNC2(&pdev->dev, sizeof(*retu_wdt), GFP_KERNEL);
	if (!retu_wdt)
		return -ENOMEM;

	wdev = FUNC2(&pdev->dev, sizeof(*wdev), GFP_KERNEL);
	if (!wdev)
		return -ENOMEM;

	retu_wdt->info		= &retu_wdt_info;
	retu_wdt->ops		= &retu_wdt_ops;
	retu_wdt->timeout	= RETU_WDT_MAX_TIMER;
	retu_wdt->min_timeout	= 0;
	retu_wdt->max_timeout	= RETU_WDT_MAX_TIMER;
	retu_wdt->parent	= &pdev->dev;

	FUNC7(retu_wdt, wdev);
	FUNC8(retu_wdt, nowayout);

	wdev->rdev		= rdev;
	wdev->dev		= &pdev->dev;

	FUNC0(&wdev->ping_work, retu_wdt_ping_work);

	ret = FUNC6(retu_wdt);
	if (ret < 0)
		return ret;

	if (nowayout)
		FUNC4(retu_wdt);
	else
		FUNC5(wdev);

	FUNC3(pdev, retu_wdt);

	return 0;
}