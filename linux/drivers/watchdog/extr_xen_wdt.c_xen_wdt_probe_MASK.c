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
struct sched_watchdog {int /*<<< orphan*/  id; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  timeout; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOSYS ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sched_watchdog*) ; 
 int /*<<< orphan*/  SCHEDOP_watchdog ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  timeout ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_1__ xen_wdt_dev ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct sched_watchdog wd = { .id = ~0 };
	int ret = FUNC0(SCHEDOP_watchdog, &wd);

	if (ret == -ENOSYS) {
		FUNC1(dev, "watchdog not supported by hypervisor\n");
		return -ENODEV;
	}

	if (ret != -EINVAL) {
		FUNC1(dev, "unexpected hypervisor error (%d)\n", ret);
		return -ENODEV;
	}

	FUNC4(&xen_wdt_dev, timeout, NULL);
	FUNC5(&xen_wdt_dev, nowayout);
	FUNC6(&xen_wdt_dev);
	FUNC7(&xen_wdt_dev);

	ret = FUNC3(dev, &xen_wdt_dev);
	if (ret)
		return ret;

	FUNC2(dev, "initialized (timeout=%ds, nowayout=%d)\n",
		 xen_wdt_dev.timeout, nowayout);

	return 0;
}