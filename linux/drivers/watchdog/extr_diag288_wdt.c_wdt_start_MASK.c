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
struct watchdog_device {int /*<<< orphan*/  timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIAG_WDOG_BUSY ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LPARWDT_RESTART ; 
 scalar_t__ MACHINE_IS_VM ; 
 int /*<<< orphan*/  MAX_CMDLEN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned int WDT_FUNC_CONCEAL ; 
 unsigned int WDT_FUNC_INIT ; 
 int FUNC3 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned int,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ conceal_on ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 size_t FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wdt_cmd ; 
 int /*<<< orphan*/  wdt_status ; 

__attribute__((used)) static int FUNC11(struct watchdog_device *dev)
{
	char *ebc_cmd;
	size_t len;
	int ret;
	unsigned int func;

	if (FUNC10(DIAG_WDOG_BUSY, &wdt_status))
		return -EBUSY;

	ret = -ENODEV;

	if (MACHINE_IS_VM) {
		ebc_cmd = FUNC7(MAX_CMDLEN, GFP_KERNEL);
		if (!ebc_cmd) {
			FUNC5(DIAG_WDOG_BUSY, &wdt_status);
			return -ENOMEM;
		}
		len = FUNC9(ebc_cmd, wdt_cmd, MAX_CMDLEN);
		FUNC0(ebc_cmd, MAX_CMDLEN);
		FUNC1(ebc_cmd, MAX_CMDLEN);

		func = conceal_on ? (WDT_FUNC_INIT | WDT_FUNC_CONCEAL)
			: WDT_FUNC_INIT;
		ret = FUNC4(func, dev->timeout, ebc_cmd, len);
		FUNC2(ret != 0);
		FUNC6(ebc_cmd);
	} else {
		ret = FUNC3(WDT_FUNC_INIT,
				     dev->timeout, LPARWDT_RESTART);
	}

	if (ret) {
		FUNC8("The watchdog cannot be activated\n");
		FUNC5(DIAG_WDOG_BUSY, &wdt_status);
		return ret;
	}
	return 0;
}