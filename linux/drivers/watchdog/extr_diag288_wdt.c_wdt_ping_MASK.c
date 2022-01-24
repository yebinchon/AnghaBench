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
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MACHINE_IS_VM ; 
 int /*<<< orphan*/  MAX_CMDLEN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  WDT_FUNC_CHANGE ; 
 unsigned int WDT_FUNC_CONCEAL ; 
 unsigned int WDT_FUNC_INIT ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned int,int /*<<< orphan*/ ,char*,size_t) ; 
 scalar_t__ conceal_on ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 size_t FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wdt_cmd ; 

__attribute__((used)) static int FUNC9(struct watchdog_device *dev)
{
	char *ebc_cmd;
	size_t len;
	int ret;
	unsigned int func;

	ret = -ENODEV;

	if (MACHINE_IS_VM) {
		ebc_cmd = FUNC6(MAX_CMDLEN, GFP_KERNEL);
		if (!ebc_cmd)
			return -ENOMEM;
		len = FUNC8(ebc_cmd, wdt_cmd, MAX_CMDLEN);
		FUNC0(ebc_cmd, MAX_CMDLEN);
		FUNC1(ebc_cmd, MAX_CMDLEN);

		/*
		 * It seems to be ok to z/VM to use the init function to
		 * retrigger the watchdog. On LPAR WDT_FUNC_CHANGE must
		 * be used when the watchdog is running.
		 */
		func = conceal_on ? (WDT_FUNC_INIT | WDT_FUNC_CONCEAL)
			: WDT_FUNC_INIT;

		ret = FUNC4(func, dev->timeout, ebc_cmd, len);
		FUNC2(ret != 0);
		FUNC5(ebc_cmd);
	} else {
		ret = FUNC3(WDT_FUNC_CHANGE, dev->timeout, 0);
	}

	if (ret)
		FUNC7("The watchdog timer cannot be started or reset\n");
	return ret;
}