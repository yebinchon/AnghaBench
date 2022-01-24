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
typedef  int /*<<< orphan*/  u32 ;
struct work_struct {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_2__ {int wireless; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACER_CAP_BLUETOOTH ; 
 int /*<<< orphan*/  ACER_CAP_THREEG ; 
 int /*<<< orphan*/  ACER_CAP_WIRELESS ; 
 int /*<<< orphan*/  ACER_WMID3_GDS_THREEG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  WMID_GUID3 ; 
 int /*<<< orphan*/  acer_rfkill_work ; 
 int /*<<< orphan*/  bluetooth_rfkill ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* quirks ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  threeg_rfkill ; 
 int /*<<< orphan*/  wireless_rfkill ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct work_struct *ignored)
{
	u32 state;
	acpi_status status;

	if (FUNC2(ACER_CAP_WIRELESS)) {
		status = FUNC1(&state, ACER_CAP_WIRELESS);
		if (FUNC0(status)) {
			if (quirks->wireless == 3)
				FUNC3(wireless_rfkill, !state);
			else
				FUNC4(wireless_rfkill, !state);
		}
	}

	if (FUNC2(ACER_CAP_BLUETOOTH)) {
		status = FUNC1(&state, ACER_CAP_BLUETOOTH);
		if (FUNC0(status))
			FUNC4(bluetooth_rfkill, !state);
	}

	if (FUNC2(ACER_CAP_THREEG) && FUNC7(WMID_GUID3)) {
		status = FUNC1(&state, ACER_WMID3_GDS_THREEG);
		if (FUNC0(status))
			FUNC4(threeg_rfkill, !state);
	}

	FUNC6(&acer_rfkill_work, FUNC5(HZ));
}