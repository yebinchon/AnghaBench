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
struct asus_laptop {scalar_t__ wled_type; scalar_t__ bled_type; int /*<<< orphan*/  wimax; int /*<<< orphan*/  handle; int /*<<< orphan*/  wwan; int /*<<< orphan*/  bluetooth; int /*<<< orphan*/  wlan; int /*<<< orphan*/  gps; scalar_t__ is_pega_lucid; } ;

/* Variables and functions */
 int BT_RSTS ; 
 int ENODEV ; 
 int /*<<< orphan*/  METHOD_BLUETOOTH ; 
 int /*<<< orphan*/  METHOD_GPS_OFF ; 
 int /*<<< orphan*/  METHOD_GPS_ON ; 
 int /*<<< orphan*/  METHOD_GPS_STATUS ; 
 int /*<<< orphan*/  METHOD_WIMAX ; 
 int /*<<< orphan*/  METHOD_WLAN ; 
 int /*<<< orphan*/  METHOD_WWAN ; 
 int /*<<< orphan*/  RFKILL_TYPE_BLUETOOTH ; 
 int /*<<< orphan*/  RFKILL_TYPE_GPS ; 
 int /*<<< orphan*/  RFKILL_TYPE_WIMAX ; 
 int /*<<< orphan*/  RFKILL_TYPE_WLAN ; 
 int /*<<< orphan*/  RFKILL_TYPE_WWAN ; 
 scalar_t__ TYPE_RFKILL ; 
 int WL_RSTS ; 
 int WM_RSTS ; 
 int WW_RSTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  asus_gps_rfkill_ops ; 
 int /*<<< orphan*/  FUNC1 (struct asus_laptop*) ; 
 int /*<<< orphan*/  asus_rfkill_ops ; 
 int FUNC2 (struct asus_laptop*,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct asus_laptop *asus)
{
	int result = 0;

	if (asus->is_pega_lucid)
		return -ENODEV;

	if (!FUNC0(asus->handle, METHOD_GPS_ON, NULL) &&
	    !FUNC0(asus->handle, METHOD_GPS_OFF, NULL) &&
	    !FUNC0(asus->handle, METHOD_GPS_STATUS, NULL))
		result = FUNC2(asus, &asus->gps, "asus-gps",
					   -1, RFKILL_TYPE_GPS,
					   &asus_gps_rfkill_ops);
	if (result)
		goto exit;


	if (!FUNC0(asus->handle, METHOD_WLAN, NULL) &&
	    asus->wled_type == TYPE_RFKILL)
		result = FUNC2(asus, &asus->wlan, "asus-wlan",
					   WL_RSTS, RFKILL_TYPE_WLAN,
					   &asus_rfkill_ops);
	if (result)
		goto exit;

	if (!FUNC0(asus->handle, METHOD_BLUETOOTH, NULL) &&
	    asus->bled_type == TYPE_RFKILL)
		result = FUNC2(asus, &asus->bluetooth,
					   "asus-bluetooth", BT_RSTS,
					   RFKILL_TYPE_BLUETOOTH,
					   &asus_rfkill_ops);
	if (result)
		goto exit;

	if (!FUNC0(asus->handle, METHOD_WWAN, NULL))
		result = FUNC2(asus, &asus->wwan, "asus-wwan",
					   WW_RSTS, RFKILL_TYPE_WWAN,
					   &asus_rfkill_ops);
	if (result)
		goto exit;

	if (!FUNC0(asus->handle, METHOD_WIMAX, NULL))
		result = FUNC2(asus, &asus->wimax, "asus-wimax",
					   WM_RSTS, RFKILL_TYPE_WIMAX,
					   &asus_rfkill_ops);
	if (result)
		goto exit;

exit:
	if (result)
		FUNC1(asus);

	return result;
}