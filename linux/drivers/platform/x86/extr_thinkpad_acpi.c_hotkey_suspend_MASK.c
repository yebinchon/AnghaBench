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
struct TYPE_2__ {scalar_t__ has_adaptive_kbd; } ;

/* Variables and functions */
 int /*<<< orphan*/  TP_ACPI_WAKEUP_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adaptive_keyboard_prev_mode ; 
 int /*<<< orphan*/  hkey_handle ; 
 scalar_t__ hotkey_autosleep_ack ; 
 int /*<<< orphan*/  hotkey_wakeup_reason ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__ tp_features ; 

__attribute__((used)) static void FUNC2(void)
{
	/* Do these on suspend, we get the events on early resume! */
	hotkey_wakeup_reason = TP_ACPI_WAKEUP_NONE;
	hotkey_autosleep_ack = 0;

	/* save previous mode of adaptive keyboard of X1 Carbon */
	if (tp_features.has_adaptive_kbd) {
		if (!FUNC0(hkey_handle, &adaptive_keyboard_prev_mode,
					"GTRW", "dd", 0)) {
			FUNC1("Cannot read adaptive keyboard mode.\n");
		}
	}
}