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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  regs; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  TIMER_WDT_ID ; 
 int /*<<< orphan*/  WDT_DEFAULT_TIME ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bcm63xx_timer_tick ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ bcm63xx_wdt_device ; 
 int /*<<< orphan*/  bcm63xx_wdt_isr ; 
 int /*<<< orphan*/  bcm63xx_wdt_miscdev ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wdt_time ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	int ret;
	struct resource *r;

	FUNC9(&bcm63xx_wdt_device.timer, bcm63xx_timer_tick, 0);

	r = FUNC7(pdev, IORESOURCE_MEM, 0);
	if (!r) {
		FUNC3(&pdev->dev, "failed to get resources\n");
		return -ENODEV;
	}

	bcm63xx_wdt_device.regs = FUNC5(&pdev->dev, r->start,
							FUNC8(r));
	if (!bcm63xx_wdt_device.regs) {
		FUNC3(&pdev->dev, "failed to remap I/O resources\n");
		return -ENXIO;
	}

	ret = FUNC0(TIMER_WDT_ID, bcm63xx_wdt_isr, NULL);
	if (ret < 0) {
		FUNC3(&pdev->dev, "failed to register wdt timer isr\n");
		return ret;
	}

	if (FUNC2(wdt_time)) {
		FUNC2(WDT_DEFAULT_TIME);
		FUNC4(&pdev->dev,
			": wdt_time value must be 1 <= wdt_time <= 256, using %d\n",
			wdt_time);
	}

	ret = FUNC6(&bcm63xx_wdt_miscdev);
	if (ret < 0) {
		FUNC3(&pdev->dev, "failed to register watchdog device\n");
		goto unregister_timer;
	}

	FUNC4(&pdev->dev, " started, timer margin: %d sec\n",
						WDT_DEFAULT_TIME);

	return 0;

unregister_timer:
	FUNC1(TIMER_WDT_ID);
	return ret;
}