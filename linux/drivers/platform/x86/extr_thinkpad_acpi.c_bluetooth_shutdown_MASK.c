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
 int /*<<< orphan*/  TPACPI_DBG_RFKILL ; 
 int /*<<< orphan*/  TP_ACPI_BLTH_SAVE_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(void)
{
	/* Order firmware to save current state to NVRAM */
	if (!FUNC0(NULL, NULL, "\\BLTH", "vd",
			TP_ACPI_BLTH_SAVE_STATE))
		FUNC1("failed to save bluetooth state to NVRAM\n");
	else
		FUNC2(TPACPI_DBG_RFKILL,
			"bluetooth state saved to NVRAM\n");
}