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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  MCP51_SMBUS_SETUP_B ; 
 int MCP51_SMBUS_SETUP_B_TCO_REBOOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  nv_tco_miscdev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tco_pci ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  tcobase ; 

__attribute__((used)) static void FUNC6(void)
{
	u32 val;

	/* Stop the timer before we leave */
	if (!nowayout)
		FUNC5();

	/* Set the NO_REBOOT bit to prevent later reboots, just for sure */
	FUNC1(tco_pci, MCP51_SMBUS_SETUP_B, &val);
	val &= ~MCP51_SMBUS_SETUP_B_TCO_REBOOT;
	FUNC2(tco_pci, MCP51_SMBUS_SETUP_B, val);
	FUNC1(tco_pci, MCP51_SMBUS_SETUP_B, &val);
	if (val & MCP51_SMBUS_SETUP_B_TCO_REBOOT) {
		FUNC3("Couldn't unset REBOOT bit.  Machine may soon reset\n");
	}

	/* Deregister */
	FUNC0(&nv_tco_miscdev);
	FUNC4(tcobase, 0x10);
}