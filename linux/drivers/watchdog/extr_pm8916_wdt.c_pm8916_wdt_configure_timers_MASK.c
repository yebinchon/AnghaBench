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
struct watchdog_device {scalar_t__ pretimeout; scalar_t__ timeout; } ;
struct pm8916_wdt {scalar_t__ baseaddr; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 scalar_t__ PON_PMIC_WD_RESET_S1_TIMER ; 
 scalar_t__ PON_PMIC_WD_RESET_S2_TIMER ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 struct pm8916_wdt* FUNC1 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC2(struct watchdog_device *wdev)
{
	struct pm8916_wdt *wdt = FUNC1(wdev);
	int err;

	err = FUNC0(wdt->regmap,
			   wdt->baseaddr + PON_PMIC_WD_RESET_S1_TIMER,
			   wdev->timeout - wdev->pretimeout);
	if (err)
		return err;

	return FUNC0(wdt->regmap,
			    wdt->baseaddr + PON_PMIC_WD_RESET_S2_TIMER,
			    wdev->pretimeout);
}