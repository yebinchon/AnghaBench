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
 int /*<<< orphan*/  LDN_GPIO ; 
 scalar_t__ WDT_CONFIG ; 
 scalar_t__ WDT_CONTROL ; 
 scalar_t__ WDT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int revision ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void)
{
	int ret = FUNC1();
	if (ret)
		return ret;

	FUNC0("disabling watchdog timer\n");
	FUNC4(LDN_GPIO);

	FUNC3(0, WDT_CONFIG);
	FUNC3(0, WDT_CONTROL);
	if (revision >= 0x08)
		FUNC3(0, WDT_TIMEOUT + 1);
	FUNC3(0, WDT_TIMEOUT);

	FUNC2();
	return 0;
}