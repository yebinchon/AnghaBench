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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  default_ticks; int /*<<< orphan*/  timer; int /*<<< orphan*/  inuse; scalar_t__ queue; int /*<<< orphan*/  stop; int /*<<< orphan*/  lock; int /*<<< orphan*/  gpiod; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__ mtx1_wdt_device ; 
 int /*<<< orphan*/  mtx1_wdt_misc ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  mtx1_wdt_trigger ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ticks ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	int ret;

	mtx1_wdt_device.gpiod = FUNC5(&pdev->dev,
					       NULL, GPIOD_OUT_HIGH);
	if (FUNC0(mtx1_wdt_device.gpiod)) {
		FUNC3(&pdev->dev, "failed to request gpio");
		return FUNC1(mtx1_wdt_device.gpiod);
	}

	FUNC9(&mtx1_wdt_device.lock);
	FUNC6(&mtx1_wdt_device.stop);
	mtx1_wdt_device.queue = 0;
	FUNC2(0, &mtx1_wdt_device.inuse);
	FUNC10(&mtx1_wdt_device.timer, mtx1_wdt_trigger, 0);
	mtx1_wdt_device.default_ticks = ticks;

	ret = FUNC7(&mtx1_wdt_misc);
	if (ret < 0) {
		FUNC3(&pdev->dev, "failed to register\n");
		return ret;
	}
	FUNC8();
	FUNC4(&pdev->dev, "MTX-1 Watchdog driver\n");
	return 0;
}