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
 int /*<<< orphan*/  ACERWMID_EVENT_GUID ; 
 int ACER_CAP_BLUETOOTH ; 
 int ACER_CAP_THREEG ; 
 int ACER_CAP_WIRELESS ; 
 int /*<<< orphan*/  acer_rfkill_work ; 
 int /*<<< orphan*/  bluetooth_rfkill ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ ec_raw_mode ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  threeg_rfkill ; 
 int /*<<< orphan*/  wireless_rfkill ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	if ((ec_raw_mode || !FUNC4(ACERWMID_EVENT_GUID)) &&
	    FUNC1(ACER_CAP_WIRELESS | ACER_CAP_BLUETOOTH | ACER_CAP_THREEG))
		FUNC0(&acer_rfkill_work);

	if (FUNC1(ACER_CAP_WIRELESS)) {
		FUNC3(wireless_rfkill);
		FUNC2(wireless_rfkill);
	}

	if (FUNC1(ACER_CAP_BLUETOOTH)) {
		FUNC3(bluetooth_rfkill);
		FUNC2(bluetooth_rfkill);
	}

	if (FUNC1(ACER_CAP_THREEG)) {
		FUNC3(threeg_rfkill);
		FUNC2(threeg_rfkill);
	}
	return;
}