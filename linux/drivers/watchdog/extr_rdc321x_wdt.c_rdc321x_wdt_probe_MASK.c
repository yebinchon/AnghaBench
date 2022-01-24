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
struct resource {int /*<<< orphan*/  start; } ;
struct rdc321x_wdt_pdata {int /*<<< orphan*/  sb_pdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  default_ticks; int /*<<< orphan*/  timer; int /*<<< orphan*/  inuse; scalar_t__ queue; int /*<<< orphan*/  stop; int /*<<< orphan*/  base_reg; int /*<<< orphan*/  sb_pdev; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 int /*<<< orphan*/  RDC_WDT_RST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct rdc321x_wdt_pdata* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__ rdc321x_wdt_device ; 
 int /*<<< orphan*/  rdc321x_wdt_misc ; 
 int /*<<< orphan*/  rdc321x_wdt_trigger ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ticks ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	int err;
	struct resource *r;
	struct rdc321x_wdt_pdata *pdata;

	pdata = FUNC2(&pdev->dev);
	if (!pdata) {
		FUNC1(&pdev->dev, "no platform data supplied\n");
		return -ENODEV;
	}

	r = FUNC7(pdev, IORESOURCE_IO, "wdt-reg");
	if (!r) {
		FUNC1(&pdev->dev, "failed to get wdt-reg resource\n");
		return -ENODEV;
	}

	rdc321x_wdt_device.sb_pdev = pdata->sb_pdev;
	rdc321x_wdt_device.base_reg = r->start;

	err = FUNC5(&rdc321x_wdt_misc);
	if (err < 0) {
		FUNC1(&pdev->dev, "misc_register failed\n");
		return err;
	}

	FUNC8(&rdc321x_wdt_device.lock);

	/* Reset the watchdog */
	FUNC6(rdc321x_wdt_device.sb_pdev,
				rdc321x_wdt_device.base_reg, RDC_WDT_RST);

	FUNC4(&rdc321x_wdt_device.stop);
	rdc321x_wdt_device.queue = 0;

	FUNC0(0, &rdc321x_wdt_device.inuse);

	FUNC9(&rdc321x_wdt_device.timer, rdc321x_wdt_trigger, 0);

	rdc321x_wdt_device.default_ticks = ticks;

	FUNC3(&pdev->dev, "watchdog init success\n");

	return 0;
}