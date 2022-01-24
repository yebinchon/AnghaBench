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

/* Variables and functions */
 int /*<<< orphan*/  ALI_7101_GPIO_O ; 
 int /*<<< orphan*/  ALI_7101_WDT ; 
 char ALI_WDT_ARM ; 
 int WDT_ENABLE ; 
 int /*<<< orphan*/  alim7101_pmu ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char) ; 
 scalar_t__ use_gpio ; 

__attribute__((used)) static void FUNC2(int writeval)
{
	char tmp;

	FUNC0(alim7101_pmu, ALI_7101_WDT, &tmp);
	if (writeval == WDT_ENABLE) {
		FUNC1(alim7101_pmu,
					ALI_7101_WDT, (tmp | ALI_WDT_ARM));
		if (use_gpio) {
			FUNC0(alim7101_pmu,
					ALI_7101_GPIO_O, &tmp);
			FUNC1(alim7101_pmu,
					ALI_7101_GPIO_O, tmp & ~0x20);
		}

	} else {
		FUNC1(alim7101_pmu,
					ALI_7101_WDT, (tmp & ~ALI_WDT_ARM));
		if (use_gpio) {
			FUNC0(alim7101_pmu,
					ALI_7101_GPIO_O, &tmp);
			FUNC1(alim7101_pmu,
					ALI_7101_GPIO_O, tmp | 0x20);
		}
	}
}