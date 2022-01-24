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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adaptive_keyboard_prev_mode ; 
 int /*<<< orphan*/  hkey_handle ; 
 int /*<<< orphan*/  hotkey_acpi_mask ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 TYPE_1__ tp_features ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void FUNC10(void)
{
	FUNC8();

	if (FUNC3(true) < 0 ||
	    FUNC1(hotkey_acpi_mask) < 0)
		FUNC7("error while attempting to reset the event firmware interface\n");

	FUNC9();
	FUNC4();
	FUNC6();
	FUNC5();
	FUNC2(false);

	/* restore previous mode of adapive keyboard of X1 Carbon */
	if (tp_features.has_adaptive_kbd) {
		if (!FUNC0(hkey_handle, NULL, "STRW", "vd",
					adaptive_keyboard_prev_mode)) {
			FUNC7("Cannot set adaptive keyboard mode.\n");
		}
	}
}