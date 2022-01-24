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
typedef  scalar_t__ u8 ;
struct btc_bt_link_info {int slave_role; scalar_t__ pan_exist; scalar_t__ hid_exist; scalar_t__ pan_only; scalar_t__ a2dp_exist; scalar_t__ a2dp_only; scalar_t__ hid_only; } ;
struct btc_coexist {struct btc_bt_link_info bt_link_info; } ;
struct TYPE_4__ {int auto_tdma_adjust; } ;
struct TYPE_3__ {int low_priority_rx; int /*<<< orphan*/  under_ips; } ;

/* Variables and functions */
 scalar_t__ BT_8723B_1ANT_WIFI_STATUS_CONNECTED_IDLE ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int /*<<< orphan*/  FUNC0 (struct btc_coexist*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*,scalar_t__) ; 
 TYPE_2__* coex_dm ; 
 TYPE_1__* coex_sta ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC4(
					struct btc_coexist *btcoexist,
					u8 wifi_status)
{
	struct btc_bt_link_info *bt_link_info = &btcoexist->bt_link_info;

	if ((coex_sta->low_priority_rx >= 950) && (!coex_sta->under_ips))
		bt_link_info->slave_role = true;
	else
		bt_link_info->slave_role = false;

	if (bt_link_info->hid_only) { /* HID */
		FUNC0(btcoexist, wifi_status);
		coex_dm->auto_tdma_adjust = false;
		return;
	} else if (bt_link_info->a2dp_only) { /* A2DP */
		if (wifi_status == BT_8723B_1ANT_WIFI_STATUS_CONNECTED_IDLE) {
			FUNC3(btcoexist, NORMAL_EXEC,
						true, 32);
			FUNC2(btcoexist,
							     NORMAL_EXEC, 4);
			coex_dm->auto_tdma_adjust = false;
		} else {
			FUNC1(btcoexist,
							  wifi_status);
			FUNC2(btcoexist,
							     NORMAL_EXEC, 1);
			coex_dm->auto_tdma_adjust = true;
		}
	} else if (((bt_link_info->a2dp_exist) && (bt_link_info->pan_exist)) ||
		   (bt_link_info->hid_exist && bt_link_info->a2dp_exist &&
		    bt_link_info->pan_exist)) {
		/* A2DP + PAN(OPP,FTP), HID + A2DP + PAN(OPP,FTP) */
		FUNC3(btcoexist, NORMAL_EXEC, true, 13);
		FUNC2(btcoexist, NORMAL_EXEC, 4);
		coex_dm->auto_tdma_adjust = false;
	} else if (bt_link_info->hid_exist && bt_link_info->a2dp_exist) {
		/* HID + A2DP */
		FUNC3(btcoexist, NORMAL_EXEC,	true, 14);
		coex_dm->auto_tdma_adjust = false;

		FUNC2(btcoexist, NORMAL_EXEC, 4);
	} else if (bt_link_info->pan_only ||
			(bt_link_info->hid_exist && bt_link_info->pan_exist)) {
		/* PAN(OPP,FTP), HID + PAN(OPP,FTP) */
		FUNC3(btcoexist, NORMAL_EXEC, true, 3);
		FUNC2(btcoexist, NORMAL_EXEC, 4);
		coex_dm->auto_tdma_adjust = false;
	} else {
		/* BT no-profile busy (0x9) */
		FUNC3(btcoexist, NORMAL_EXEC, true, 33);
		FUNC2(btcoexist, NORMAL_EXEC, 4);
		coex_dm->auto_tdma_adjust = false;
	}
}