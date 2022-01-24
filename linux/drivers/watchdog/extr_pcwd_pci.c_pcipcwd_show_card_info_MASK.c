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
struct TYPE_2__ {int boot_status; scalar_t__ supports_temp; scalar_t__ io_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_GET_FIRMWARE_VERSION ; 
 int WDIOF_CARDRESET ; 
 int WDIOF_OVERHEAT ; 
 int FUNC0 () ; 
 TYPE_1__ pcipcwd_private ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 

__attribute__((used)) static void FUNC4(void)
{
	int got_fw_rev, fw_rev_major, fw_rev_minor;
	char fw_ver_str[20];		/* The cards firmware version */
	int option_switches;

	got_fw_rev = FUNC2(CMD_GET_FIRMWARE_VERSION, &fw_rev_major,
								&fw_rev_minor);
	if (got_fw_rev)
		FUNC3(fw_ver_str, "%u.%02u", fw_rev_major, fw_rev_minor);
	else
		FUNC3(fw_ver_str, "<card no answer>");

	/* Get switch settings */
	option_switches = FUNC0();

	FUNC1("Found card at port 0x%04x (Firmware: %s) %s temp option\n",
		(int) pcipcwd_private.io_addr, fw_ver_str,
		(pcipcwd_private.supports_temp ? "with" : "without"));

	FUNC1("Option switches (0x%02x): Temperature Reset Enable=%s, Power On Delay=%s\n",
		option_switches,
		((option_switches & 0x10) ? "ON" : "OFF"),
		((option_switches & 0x08) ? "ON" : "OFF"));

	if (pcipcwd_private.boot_status & WDIOF_CARDRESET)
		FUNC1("Previous reset was caused by the Watchdog card\n");

	if (pcipcwd_private.boot_status & WDIOF_OVERHEAT)
		FUNC1("Card sensed a CPU Overheat\n");

	if (pcipcwd_private.boot_status == 0)
		FUNC1("No previous trip detected - Cold boot or reset\n");
}