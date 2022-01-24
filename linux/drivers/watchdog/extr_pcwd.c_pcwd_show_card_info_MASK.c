#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ revision; int boot_status; scalar_t__ supports_temp; int /*<<< orphan*/  fw_ver_str; int /*<<< orphan*/  io_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ISA_DELAY_TIME_2SECS ; 
 scalar_t__ PCWD_REVISION_A ; 
 scalar_t__ PCWD_REVISION_C ; 
 int WDIOF_CARDRESET ; 
 int WDIOF_OVERHEAT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 TYPE_1__ pcwd_private ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(void)
{
	int option_switches;

	/* Get some extra info from the hardware (in command/debug/diag mode) */
	if (pcwd_private.revision == PCWD_REVISION_A)
		FUNC3("ISA-PC Watchdog (REV.A) detected at port 0x%04x\n",
			pcwd_private.io_addr);
	else if (pcwd_private.revision == PCWD_REVISION_C) {
		FUNC0();
		FUNC3("ISA-PC Watchdog (REV.C) detected at port 0x%04x (Firmware version: %s)\n",
			pcwd_private.io_addr, pcwd_private.fw_ver_str);
		option_switches = FUNC1();
		FUNC3("Option switches (0x%02x): Temperature Reset Enable=%s, Power On Delay=%s\n",
			option_switches,
			((option_switches & 0x10) ? "ON" : "OFF"),
			((option_switches & 0x08) ? "ON" : "OFF"));

		/* Reprogram internal heartbeat to 2 seconds */
		if (FUNC5()) {
			FUNC4(CMD_ISA_DELAY_TIME_2SECS);
			FUNC6();
		}
	}

	if (pcwd_private.supports_temp)
		FUNC3("Temperature Option Detected\n");

	if (pcwd_private.boot_status & WDIOF_CARDRESET)
		FUNC3("Previous reboot was caused by the card\n");

	if (pcwd_private.boot_status & WDIOF_OVERHEAT) {
		FUNC2("Card senses a CPU Overheat. Panicking!\n");
		FUNC2("CPU Overheat\n");
	}

	if (pcwd_private.boot_status == 0)
		FUNC3("No previous trip detected - Cold boot or reset\n");
}