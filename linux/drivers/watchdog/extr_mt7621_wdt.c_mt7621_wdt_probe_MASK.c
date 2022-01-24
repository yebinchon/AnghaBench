#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  status; int /*<<< orphan*/  max_timeout; int /*<<< orphan*/  bootstatus; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WDOG_HW_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  mt7621_wdt_base ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__ mt7621_wdt_dev ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  mt7621_wdt_reset ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	mt7621_wdt_base = FUNC2(pdev, 0);
	if (FUNC0(mt7621_wdt_base))
		return FUNC1(mt7621_wdt_base);

	mt7621_wdt_reset = FUNC3(dev, NULL);
	if (!FUNC0(mt7621_wdt_reset))
		FUNC9(mt7621_wdt_reset);

	mt7621_wdt_dev.bootstatus = FUNC5();

	FUNC11(&mt7621_wdt_dev, mt7621_wdt_dev.max_timeout,
			      dev);
	FUNC12(&mt7621_wdt_dev, nowayout);
	if (FUNC6(&mt7621_wdt_dev)) {
		/*
		 * Make sure to apply timeout from watchdog core, taking
		 * the prescaler of this driver here into account (the
		 * boot loader might be using a different prescaler).
		 *
		 * To avoid spurious resets because of different scaling,
		 * we first disable the watchdog, set the new prescaler
		 * and timeout, and then re-enable the watchdog.
		 */
		FUNC8(&mt7621_wdt_dev);
		FUNC7(&mt7621_wdt_dev);
		FUNC10(WDOG_HW_RUNNING, &mt7621_wdt_dev.status);
	}

	return FUNC4(dev, &mt7621_wdt_dev);
}