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
typedef  enum tpacpi_rfkill_state { ____Placeholder_tpacpi_rfkill_state } tpacpi_rfkill_state ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  TPACPI_DBG_RFKILL ; 
 int TPACPI_RFK_RADIO_ON ; 
 int TP_ACPI_BLUETOOTH_RADIOSSW ; 
 int TP_ACPI_BLUETOOTH_RESUMECTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int) ; 
 scalar_t__ dbg_bluetoothemul ; 
 int /*<<< orphan*/  hkey_handle ; 
 int tpacpi_bluetooth_emulstate ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC2(enum tpacpi_rfkill_state state)
{
	int status;

	FUNC1(TPACPI_DBG_RFKILL,
		"will attempt to %s bluetooth\n",
		(state == TPACPI_RFK_RADIO_ON) ? "enable" : "disable");

#ifdef CONFIG_THINKPAD_ACPI_DEBUGFACILITIES
	if (dbg_bluetoothemul) {
		tpacpi_bluetooth_emulstate = (state == TPACPI_RFK_RADIO_ON);
		return 0;
	}
#endif

	if (state == TPACPI_RFK_RADIO_ON)
		status = TP_ACPI_BLUETOOTH_RADIOSSW
			  | TP_ACPI_BLUETOOTH_RESUMECTRL;
	else
		status = 0;

	if (!FUNC0(hkey_handle, NULL, "SBDC", "vd", status))
		return -EIO;

	return 0;
}