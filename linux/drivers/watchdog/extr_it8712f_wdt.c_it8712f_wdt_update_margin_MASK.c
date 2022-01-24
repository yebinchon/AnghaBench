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
 scalar_t__ WDT_CONFIG ; 
 int WDT_OUT_KRST ; 
 int WDT_OUT_PWROK ; 
 scalar_t__ WDT_TIMEOUT ; 
 int WDT_UNIT_SEC ; 
 int margin ; 
 int max_units ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int revision ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(void)
{
	int config = WDT_OUT_KRST | WDT_OUT_PWROK;
	int units = margin;

	/* Switch to minutes precision if the configured margin
	 * value does not fit within the register width.
	 */
	if (units <= max_units) {
		config |= WDT_UNIT_SEC; /* else UNIT is MINUTES */
		FUNC0("timer margin %d seconds\n", units);
	} else {
		units /= 60;
		FUNC0("timer margin %d minutes\n", units);
	}
	FUNC1(config, WDT_CONFIG);

	if (revision >= 0x08)
		FUNC1(units >> 8, WDT_TIMEOUT + 1);
	FUNC1(units, WDT_TIMEOUT);
}