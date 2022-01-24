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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACERWMID_EVENT_GUID ; 
 int ACER_CAP_BLUETOOTH ; 
 int ACER_CAP_THREEG ; 
 int ACER_CAP_WIRELESS ; 
 int /*<<< orphan*/  HZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RFKILL_TYPE_BLUETOOTH ; 
 int /*<<< orphan*/  RFKILL_TYPE_WLAN ; 
 int /*<<< orphan*/  RFKILL_TYPE_WWAN ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  acer_rfkill_work ; 
 int /*<<< orphan*/  bluetooth_rfkill ; 
 scalar_t__ ec_raw_mode ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int rfkill_inited ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  threeg_rfkill ; 
 int /*<<< orphan*/  wireless_rfkill ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct device *dev)
{
	int err;

	if (FUNC3(ACER_CAP_WIRELESS)) {
		wireless_rfkill = FUNC2(dev, RFKILL_TYPE_WLAN,
			"acer-wireless", ACER_CAP_WIRELESS);
		if (FUNC0(wireless_rfkill)) {
			err = FUNC1(wireless_rfkill);
			goto error_wireless;
		}
	}

	if (FUNC3(ACER_CAP_BLUETOOTH)) {
		bluetooth_rfkill = FUNC2(dev,
			RFKILL_TYPE_BLUETOOTH, "acer-bluetooth",
			ACER_CAP_BLUETOOTH);
		if (FUNC0(bluetooth_rfkill)) {
			err = FUNC1(bluetooth_rfkill);
			goto error_bluetooth;
		}
	}

	if (FUNC3(ACER_CAP_THREEG)) {
		threeg_rfkill = FUNC2(dev,
			RFKILL_TYPE_WWAN, "acer-threeg",
			ACER_CAP_THREEG);
		if (FUNC0(threeg_rfkill)) {
			err = FUNC1(threeg_rfkill);
			goto error_threeg;
		}
	}

	rfkill_inited = true;

	if ((ec_raw_mode || !FUNC8(ACERWMID_EVENT_GUID)) &&
	    FUNC3(ACER_CAP_WIRELESS | ACER_CAP_BLUETOOTH | ACER_CAP_THREEG))
		FUNC7(&acer_rfkill_work,
			FUNC6(HZ));

	return 0;

error_threeg:
	if (FUNC3(ACER_CAP_BLUETOOTH)) {
		FUNC5(bluetooth_rfkill);
		FUNC4(bluetooth_rfkill);
	}
error_bluetooth:
	if (FUNC3(ACER_CAP_WIRELESS)) {
		FUNC5(wireless_rfkill);
		FUNC4(wireless_rfkill);
	}
error_wireless:
	return err;
}