#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ output; } ;
struct TYPE_4__ {TYPE_1__ fwlog; } ;
struct wl1271 {int quirks; TYPE_2__ conf; int /*<<< orphan*/  watchdog_recovery; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ WL12XX_FWLOG_OUTPUT_DBG_PINS ; 
 int WLCORE_QUIRK_FWLOG_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wl1271*) ; 
 scalar_t__ FUNC5 (struct wl1271*) ; 

__attribute__((used)) static void FUNC6(struct wl1271 *wl)
{
	u32 end_of_log = 0;
	int error;

	if (wl->quirks & WLCORE_QUIRK_FWLOG_NOT_IMPLEMENTED)
		return;

	FUNC3("Reading FW panic log");

	/*
	 * Make sure the chip is awake and the logger isn't active.
	 * Do not send a stop fwlog command if the fw is hanged or if
	 * dbgpins are used (due to some fw bug).
	 */
	error = FUNC1(wl->dev);
	if (error < 0) {
		FUNC2(wl->dev);
		return;
	}
	if (!wl->watchdog_recovery &&
	    wl->conf.fwlog.output != WL12XX_FWLOG_OUTPUT_DBG_PINS)
		FUNC4(wl);

	/* Traverse the memory blocks linked list */
	do {
		end_of_log = FUNC5(wl);
		if (end_of_log == 0) {
			FUNC0(100);
			end_of_log = FUNC5(wl);
		}
	} while (end_of_log != 0);
}