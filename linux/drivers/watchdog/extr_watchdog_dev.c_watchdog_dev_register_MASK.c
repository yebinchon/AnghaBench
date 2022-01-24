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
struct TYPE_2__ {int /*<<< orphan*/  notifier_call; } ;
struct watchdog_device {int /*<<< orphan*/  id; TYPE_1__ reboot_nb; int /*<<< orphan*/  status; int /*<<< orphan*/  groups; int /*<<< orphan*/  parent; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*) ; 
 int /*<<< orphan*/  WDOG_STOP_ON_REBOOT ; 
 struct device* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct watchdog_device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct watchdog_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct watchdog_device*) ; 
 int /*<<< orphan*/  watchdog_class ; 
 int /*<<< orphan*/  FUNC11 (struct watchdog_device*) ; 
 int /*<<< orphan*/  watchdog_devt ; 
 int /*<<< orphan*/  watchdog_reboot_notifier ; 
 int FUNC12 (struct watchdog_device*) ; 

int FUNC13(struct watchdog_device *wdd)
{
	struct device *dev;
	dev_t devno;
	int ret;

	devno = FUNC2(FUNC1(watchdog_devt), wdd->id);

	ret = FUNC9(wdd, devno);
	if (ret)
		return ret;

	dev = FUNC4(&watchdog_class, wdd->parent,
					devno, wdd, wdd->groups,
					"watchdog%d", wdd->id);
	if (FUNC0(dev)) {
		FUNC10(wdd);
		return FUNC3(dev);
	}

	ret = FUNC12(wdd);
	if (ret) {
		FUNC5(&watchdog_class, devno);
		FUNC10(wdd);
		return ret;
	}

	if (FUNC8(WDOG_STOP_ON_REBOOT, &wdd->status)) {
		wdd->reboot_nb.notifier_call = watchdog_reboot_notifier;

		ret = FUNC6(dev, &wdd->reboot_nb);
		if (ret) {
			FUNC7("watchdog%d: Cannot register reboot notifier (%d)\n",
			       wdd->id, ret);
			FUNC11(wdd);
		}
	}

	return ret;
}