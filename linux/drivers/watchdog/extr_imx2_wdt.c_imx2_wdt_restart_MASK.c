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
struct watchdog_device {int dummy; } ;
struct imx2_wdt_device {int /*<<< orphan*/  regmap; scalar_t__ ext_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMX2_WDT_WCR ; 
 unsigned int IMX2_WDT_WCR_SRS ; 
 unsigned int IMX2_WDT_WCR_WDA ; 
 unsigned int IMX2_WDT_WCR_WDE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct imx2_wdt_device* FUNC2 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdog, unsigned long action,
			    void *data)
{
	struct imx2_wdt_device *wdev = FUNC2(wdog);
	unsigned int wcr_enable = IMX2_WDT_WCR_WDE;

	/* Use internal reset or external - not both */
	if (wdev->ext_reset)
		wcr_enable |= IMX2_WDT_WCR_SRS; /* do not assert int reset */
	else
		wcr_enable |= IMX2_WDT_WCR_WDA; /* do not assert ext-reset */

	/* Assert SRS signal */
	FUNC1(wdev->regmap, IMX2_WDT_WCR, wcr_enable);
	/*
	 * Due to imx6q errata ERR004346 (WDOG: WDOG SRS bit requires to be
	 * written twice), we add another two writes to ensure there must be at
	 * least two writes happen in the same one 32kHz clock period.  We save
	 * the target check here, since the writes shouldn't be a huge burden
	 * for other platforms.
	 */
	FUNC1(wdev->regmap, IMX2_WDT_WCR, wcr_enable);
	FUNC1(wdev->regmap, IMX2_WDT_WCR, wcr_enable);

	/* wait for reset to assert... */
	FUNC0(500);

	return 0;
}