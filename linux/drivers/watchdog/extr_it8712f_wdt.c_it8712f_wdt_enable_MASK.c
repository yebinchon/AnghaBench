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
 int /*<<< orphan*/  WDT_CONTROL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wdt_control_reg ; 

__attribute__((used)) static int FUNC7(void)
{
	int ret = FUNC3();
	if (ret)
		return ret;

	FUNC2("enabling watchdog timer\n");
	FUNC6(LDN_GPIO);

	FUNC5(wdt_control_reg, WDT_CONTROL);

	FUNC1();

	FUNC4();

	FUNC0();

	return 0;
}