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
struct pm8916_wdt {scalar_t__ baseaddr; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 scalar_t__ PON_PMIC_WD_RESET_PET ; 
 int /*<<< orphan*/  WATCHDOG_PET_BIT ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pm8916_wdt* FUNC1 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC2(struct watchdog_device *wdev)
{
	struct pm8916_wdt *wdt = FUNC1(wdev);

	return FUNC0(wdt->regmap,
				  wdt->baseaddr + PON_PMIC_WD_RESET_PET,
				  WATCHDOG_PET_BIT, WATCHDOG_PET_BIT);
}