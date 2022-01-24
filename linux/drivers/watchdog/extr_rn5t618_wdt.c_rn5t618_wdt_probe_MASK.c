#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int min_timeout; int max_timeout; int timeout; struct device* parent; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct rn5t618_wdt {TYPE_1__ wdt_dev; struct rn5t618* rn5t618; } ;
struct rn5t618 {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct TYPE_8__ {int time; } ;

/* Variables and functions */
 int FUNC0 (TYPE_5__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct rn5t618* FUNC1 (int /*<<< orphan*/ ) ; 
 struct rn5t618_wdt* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,struct rn5t618_wdt*) ; 
 int /*<<< orphan*/  rn5t618_wdt_info ; 
 TYPE_5__* rn5t618_wdt_map ; 
 int /*<<< orphan*/  rn5t618_wdt_ops ; 
 int /*<<< orphan*/  timeout ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,struct device*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct rn5t618_wdt*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct rn5t618 *rn5t618 = FUNC1(dev->parent);
	struct rn5t618_wdt *wdt;
	int min_timeout, max_timeout;

	wdt = FUNC2(dev, sizeof(struct rn5t618_wdt), GFP_KERNEL);
	if (!wdt)
		return -ENOMEM;

	min_timeout = rn5t618_wdt_map[0].time;
	max_timeout = rn5t618_wdt_map[FUNC0(rn5t618_wdt_map) - 1].time;

	wdt->rn5t618 = rn5t618;
	wdt->wdt_dev.info = &rn5t618_wdt_info;
	wdt->wdt_dev.ops = &rn5t618_wdt_ops;
	wdt->wdt_dev.min_timeout = min_timeout;
	wdt->wdt_dev.max_timeout = max_timeout;
	wdt->wdt_dev.timeout = max_timeout;
	wdt->wdt_dev.parent = dev;

	FUNC6(&wdt->wdt_dev, wdt);
	FUNC4(&wdt->wdt_dev, timeout, dev);
	FUNC7(&wdt->wdt_dev, nowayout);

	FUNC3(pdev, wdt);

	return FUNC5(&wdt->wdt_dev);
}