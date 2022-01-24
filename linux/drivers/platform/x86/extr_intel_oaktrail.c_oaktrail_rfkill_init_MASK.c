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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OT_EC_BT_MASK ; 
 int /*<<< orphan*/  OT_EC_GPS_MASK ; 
 int /*<<< orphan*/  OT_EC_WIFI_MASK ; 
 int /*<<< orphan*/  OT_EC_WWAN_MASK ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RFKILL_TYPE_BLUETOOTH ; 
 int /*<<< orphan*/  RFKILL_TYPE_GPS ; 
 int /*<<< orphan*/  RFKILL_TYPE_WLAN ; 
 int /*<<< orphan*/  RFKILL_TYPE_WWAN ; 
 int /*<<< orphan*/ * bt_rfkill ; 
 int /*<<< orphan*/ * gps_rfkill ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * wifi_rfkill ; 
 int /*<<< orphan*/ * wwan_rfkill ; 

__attribute__((used)) static int FUNC4(void)
{
	int ret;

	wifi_rfkill = FUNC3("oaktrail-wifi",
					  RFKILL_TYPE_WLAN,
					  OT_EC_WIFI_MASK);
	if (FUNC0(wifi_rfkill)) {
		ret = FUNC1(wifi_rfkill);
		wifi_rfkill = NULL;
		goto cleanup;
	}

	bt_rfkill = FUNC3("oaktrail-bluetooth",
					RFKILL_TYPE_BLUETOOTH,
					OT_EC_BT_MASK);
	if (FUNC0(bt_rfkill)) {
		ret = FUNC1(bt_rfkill);
		bt_rfkill = NULL;
		goto cleanup;
	}

	gps_rfkill = FUNC3("oaktrail-gps",
					 RFKILL_TYPE_GPS,
					 OT_EC_GPS_MASK);
	if (FUNC0(gps_rfkill)) {
		ret = FUNC1(gps_rfkill);
		gps_rfkill = NULL;
		goto cleanup;
	}

	wwan_rfkill = FUNC3("oaktrail-wwan",
					  RFKILL_TYPE_WWAN,
					  OT_EC_WWAN_MASK);
	if (FUNC0(wwan_rfkill)) {
		ret = FUNC1(wwan_rfkill);
		wwan_rfkill = NULL;
		goto cleanup;
	}

	return 0;

cleanup:
	FUNC2();
	return ret;
}