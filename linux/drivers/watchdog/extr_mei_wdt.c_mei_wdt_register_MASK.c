#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  max_timeout; int /*<<< orphan*/  min_timeout; int /*<<< orphan*/  timeout; struct device* parent; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct mei_wdt {int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  state; TYPE_2__ wdd; TYPE_1__* cldev; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MEI_WDT_DEFAULT_TIMEOUT ; 
 int /*<<< orphan*/  MEI_WDT_IDLE ; 
 int /*<<< orphan*/  MEI_WDT_MAX_TIMEOUT ; 
 int /*<<< orphan*/  MEI_WDT_MIN_TIMEOUT ; 
 scalar_t__ FUNC0 (struct mei_wdt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct mei_wdt*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  wd_info ; 
 int /*<<< orphan*/  wd_ops ; 

__attribute__((used)) static int FUNC6(struct mei_wdt *wdt)
{
	struct device *dev;
	int ret;

	if (!wdt || !wdt->cldev)
		return -EINVAL;

	dev = &wdt->cldev->dev;

	FUNC1(&wdt->reg_lock);

	if (FUNC0(wdt)) {
		ret = 0;
		goto out;
	}

	wdt->wdd.info = &wd_info;
	wdt->wdd.ops = &wd_ops;
	wdt->wdd.parent = dev;
	wdt->wdd.timeout = MEI_WDT_DEFAULT_TIMEOUT;
	wdt->wdd.min_timeout = MEI_WDT_MIN_TIMEOUT;
	wdt->wdd.max_timeout = MEI_WDT_MAX_TIMEOUT;

	FUNC4(&wdt->wdd, wdt);
	FUNC5(&wdt->wdd);

	ret = FUNC3(&wdt->wdd);
	if (ret)
		FUNC4(&wdt->wdd, NULL);

	wdt->state = MEI_WDT_IDLE;

out:
	FUNC2(&wdt->reg_lock);
	return ret;
}