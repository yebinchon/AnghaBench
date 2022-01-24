#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_5__ {int runtime_reg; int /*<<< orphan*/  boot_status; int /*<<< orphan*/  io_lock; } ;
struct TYPE_4__ {struct device* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int EBUSY ; 
 int GP60 ; 
 int WATCHDOG_MINOR ; 
 int /*<<< orphan*/  WATCHDOG_TIMEOUT ; 
 int WDT_CFG ; 
 int WDT_CTRL ; 
 int WDT_TIME_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 TYPE_2__ sch311x_wdt_data ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__ sch311x_wdt_miscdev ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timeout ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	int err;

	FUNC9(&sch311x_wdt_data.io_lock);

	if (!FUNC5(sch311x_wdt_data.runtime_reg + GP60, 1, DRV_NAME)) {
		FUNC0(dev, "Failed to request region 0x%04x-0x%04x.\n",
			sch311x_wdt_data.runtime_reg + GP60,
			sch311x_wdt_data.runtime_reg + GP60);
		err = -EBUSY;
		goto exit;
	}

	if (!FUNC5(sch311x_wdt_data.runtime_reg + WDT_TIME_OUT, 4,
								DRV_NAME)) {
		FUNC0(dev, "Failed to request region 0x%04x-0x%04x.\n",
			sch311x_wdt_data.runtime_reg + WDT_TIME_OUT,
			sch311x_wdt_data.runtime_reg + WDT_CTRL);
		err = -EBUSY;
		goto exit_release_region;
	}

	/* Make sure that the watchdog is not running */
	FUNC8();

	/* Disable keyboard and mouse interaction and interrupt */
	/* -- Watchdog timer configuration --
	 * Bit 0   Reserved
	 * Bit 1   Keyboard enable: 0* = No Reset, 1 = Reset WDT upon KBD Intr.
	 * Bit 2   Mouse enable: 0* = No Reset, 1 = Reset WDT upon Mouse Intr
	 * Bit 3   Reserved
	 * Bit 4-7 WDT Interrupt Mapping: (0000* = Disabled,
	 *            0001=IRQ1, 0010=(Invalid), 0011=IRQ3 to 1111=IRQ15)
	 */
	FUNC3(0, sch311x_wdt_data.runtime_reg + WDT_CFG);

	/* Check that the heartbeat value is within it's range ;
	 * if not reset to the default */
	if (FUNC7(timeout)) {
		FUNC7(WATCHDOG_TIMEOUT);
		FUNC1(dev, "timeout value must be 1<=x<=15300, using %d\n",
			timeout);
	}

	/* Get status at boot */
	FUNC6(&sch311x_wdt_data.boot_status);

	sch311x_wdt_miscdev.parent = dev;

	err = FUNC2(&sch311x_wdt_miscdev);
	if (err != 0) {
		FUNC0(dev, "cannot register miscdev on minor=%d (err=%d)\n",
							WATCHDOG_MINOR, err);
		goto exit_release_region2;
	}

	FUNC1(dev,
		"SMSC SCH311x WDT initialized. timeout=%d sec (nowayout=%d)\n",
		timeout, nowayout);

	return 0;

exit_release_region2:
	FUNC4(sch311x_wdt_data.runtime_reg + WDT_TIME_OUT, 4);
exit_release_region:
	FUNC4(sch311x_wdt_data.runtime_reg + GP60, 1);
	sch311x_wdt_data.runtime_reg = 0;
exit:
	return err;
}