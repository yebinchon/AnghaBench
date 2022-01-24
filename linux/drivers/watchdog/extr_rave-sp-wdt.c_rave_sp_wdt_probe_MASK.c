#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  timeout ;
struct watchdog_device {int max_timeout; int timeout; int max_hw_heartbeat_ms; int /*<<< orphan*/  status; int /*<<< orphan*/  min_timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; struct device* parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  notifier_call; } ;
struct rave_sp_wdt {TYPE_2__ reboot_notifier; TYPE_1__* variant; struct watchdog_device wdd; int /*<<< orphan*/  sp; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
typedef  void nvmem_cell ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_3__ {int max_timeout; int /*<<< orphan*/  min_timeout; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  WATCHDOG_NOWAYOUT_INIT_STATUS ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct rave_sp_wdt* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,TYPE_2__*) ; 
 int FUNC5 (struct device*,struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (size_t,int) ; 
 void* FUNC10 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 void* FUNC12 (void*,size_t*) ; 
 TYPE_1__* FUNC13 (struct device*) ; 
 int /*<<< orphan*/  rave_sp_wdt_info ; 
 int /*<<< orphan*/  rave_sp_wdt_ops ; 
 int /*<<< orphan*/  rave_sp_wdt_reboot_notifier ; 
 int FUNC14 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct watchdog_device*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct watchdog_device*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct watchdog_device *wdd;
	struct rave_sp_wdt *sp_wd;
	struct nvmem_cell *cell;
	__le16 timeout = 0;
	int ret;

	sp_wd = FUNC3(dev, sizeof(*sp_wd), GFP_KERNEL);
	if (!sp_wd)
		return -ENOMEM;

	sp_wd->variant = FUNC13(dev);
	sp_wd->sp      = FUNC2(dev->parent);

	wdd              = &sp_wd->wdd;
	wdd->parent      = dev;
	wdd->info        = &rave_sp_wdt_info;
	wdd->ops         = &rave_sp_wdt_ops;
	wdd->min_timeout = sp_wd->variant->min_timeout;
	wdd->max_timeout = sp_wd->variant->max_timeout;
	wdd->status      = WATCHDOG_NOWAYOUT_INIT_STATUS;
	wdd->timeout     = 60;

	cell = FUNC10(dev, "wdt-timeout");
	if (!FUNC0(cell)) {
		size_t len;
		void *value = FUNC12(cell, &len);

		if (!FUNC0(value)) {
			FUNC8(&timeout, value, FUNC9(len, sizeof(timeout)));
			FUNC6(value);
		}
		FUNC11(cell);
	}
	FUNC16(wdd, FUNC7(timeout), dev);
	FUNC17(wdd, 255);
	FUNC18(wdd);

	sp_wd->reboot_notifier.notifier_call = rave_sp_wdt_reboot_notifier;
	ret = FUNC4(dev, &sp_wd->reboot_notifier);
	if (ret) {
		FUNC1(dev, "Failed to register reboot notifier\n");
		return ret;
	}

	/*
	 * We don't know if watchdog is running now. To be sure, let's
	 * start it and depend on watchdog core to ping it
	 */
	wdd->max_hw_heartbeat_ms = wdd->max_timeout * 1000;
	ret = FUNC14(wdd);
	if (ret) {
		FUNC1(dev, "Watchdog didn't start\n");
		return ret;
	}

	ret = FUNC5(dev, wdd);
	if (ret) {
		FUNC15(wdd);
		return ret;
	}

	return 0;
}