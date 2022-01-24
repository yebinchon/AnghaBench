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
struct watchdog_device {int min_timeout; int max_timeout; int /*<<< orphan*/  timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; struct device* parent; } ;
struct sp5100_tco {struct watchdog_device wdd; int /*<<< orphan*/  tco_reg_layout; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WATCHDOG_HEARTBEAT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sp5100_tco* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,struct watchdog_device*) ; 
 int /*<<< orphan*/  heartbeat ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  sp5100_tco_pci ; 
 int FUNC3 (struct device*,struct watchdog_device*) ; 
 int /*<<< orphan*/  sp5100_tco_wdt_info ; 
 int /*<<< orphan*/  sp5100_tco_wdt_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct watchdog_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct watchdog_device*,struct sp5100_tco*) ; 
 int /*<<< orphan*/  FUNC7 (struct watchdog_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct watchdog_device *wdd;
	struct sp5100_tco *tco;
	int ret;

	tco = FUNC1(dev, sizeof(*tco), GFP_KERNEL);
	if (!tco)
		return -ENOMEM;

	tco->tco_reg_layout = FUNC4(sp5100_tco_pci);

	wdd = &tco->wdd;
	wdd->parent = dev;
	wdd->info = &sp5100_tco_wdt_info;
	wdd->ops = &sp5100_tco_wdt_ops;
	wdd->timeout = WATCHDOG_HEARTBEAT;
	wdd->min_timeout = 1;
	wdd->max_timeout = 0xffff;

	FUNC5(wdd, heartbeat, NULL);
	FUNC7(wdd, nowayout);
	FUNC8(wdd);
	FUNC9(wdd);
	FUNC6(wdd, tco);

	ret = FUNC3(dev, wdd);
	if (ret)
		return ret;

	ret = FUNC2(dev, wdd);
	if (ret)
		return ret;

	/* Show module parameters */
	FUNC0(dev, "initialized. heartbeat=%d sec (nowayout=%d)\n",
		 wdd->timeout, nowayout);

	return 0;
}