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
struct watchdog_device {int dummy; } ;

/* Variables and functions */
 int EXT_MATCH0 ; 
 int M_RES1 ; 
 int M_RES2 ; 
 int NOTIFY_DONE ; 
 unsigned long REBOOT_HARD ; 
 unsigned long REBOOT_SOFT ; 
 int RESFRC1 ; 
 int RESFRC2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  wdt_base ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct watchdog_device *wdd,
				   unsigned long mode, void *cmd)
{
	const char *boot_cmd = cmd;

	/*
	 * Verify if a "cmd" passed from the userspace program rebooting
	 * the system; if available, handle it.
	 * - For details, see the 'reboot' syscall in kernel/reboot.c
	 * - If the received "cmd" is not supported, use the default mode.
	 */
	if (boot_cmd) {
		if (boot_cmd[0] == 'h')
			mode = REBOOT_HARD;
		else if (boot_cmd[0] == 's')
			mode = REBOOT_SOFT;
	}

	if (mode == REBOOT_SOFT) {
		/* Force match output active */
		FUNC4(EXT_MATCH0, FUNC0(wdt_base));
		/* Internal reset on match output (RESOUT_N not asserted) */
		FUNC4(M_RES1, FUNC1(wdt_base));
	} else {
		/* Instant assert of RESETOUT_N with pulse length 1mS */
		FUNC4(13000, FUNC2(wdt_base));
		FUNC4(M_RES2 | RESFRC1 | RESFRC2, FUNC1(wdt_base));
	}

	/* Wait for watchdog to reset system */
	FUNC3(1000);

	return NOTIFY_DONE;
}