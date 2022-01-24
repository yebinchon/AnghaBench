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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct btc_coexist {int /*<<< orphan*/  (* btc_get ) (struct btc_coexist*,int /*<<< orphan*/ ,scalar_t__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_GET_U4_WIFI_BW ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ BTC_RSSI_STATE_HIGH ; 
 scalar_t__ BTC_RSSI_STATE_STAY_HIGH ; 
 scalar_t__ BTC_WIFI_BW_HT40 ; 
 scalar_t__ BTC_WIFI_BW_LEGACY ; 
 int /*<<< orphan*/  BT_8821A_2ANT_BT_RSSI_COEXSWITCH_THRES ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 scalar_t__ FUNC1 (struct btc_coexist*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*,int,int,int,int) ; 
 scalar_t__ FUNC8 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct btc_coexist*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC10(struct btc_coexist *btcoexist)
{
	u8 wifi_rssi_state, bt_rssi_state;
	u32 wifi_bw;

	wifi_rssi_state = FUNC8(btcoexist, 0, 2, 15, 0);
	bt_rssi_state = FUNC1(btcoexist,
				2, BT_8821A_2ANT_BT_RSSI_COEXSWITCH_THRES, 0);

	FUNC4(btcoexist, NORMAL_EXEC, 6);

	if (FUNC0(bt_rssi_state))
		FUNC3(btcoexist, NORMAL_EXEC, true);
	else
		FUNC3(btcoexist, NORMAL_EXEC, false);

	btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_BW, &wifi_bw);

	if (wifi_bw == BTC_WIFI_BW_LEGACY) {
		/* for HID at 11b/g mode */
		FUNC2(btcoexist, NORMAL_EXEC, 0x55ff55ff,
					0x5a5f5a5f, 0xffff, 0x3);
	} else {
		/* for HID quality & wifi performance balance at 11n mode */
		FUNC2(btcoexist, NORMAL_EXEC, 0x55ff55ff,
					0x5a5f5a5f, 0xffff, 0x3);
	}

	if (wifi_bw == BTC_WIFI_BW_HT40) {
		FUNC4(btcoexist, NORMAL_EXEC, 3);
		/* fw mechanism */
		if ((bt_rssi_state == BTC_RSSI_STATE_HIGH) ||
		    (bt_rssi_state == BTC_RSSI_STATE_STAY_HIGH)) {
			FUNC5(btcoexist, NORMAL_EXEC,
					     true, 10);
		} else {
			FUNC5(btcoexist, NORMAL_EXEC, true, 14);
		}

		/* sw mechanism */
		if ((wifi_rssi_state == BTC_RSSI_STATE_HIGH) ||
		    (wifi_rssi_state == BTC_RSSI_STATE_STAY_HIGH)) {
			FUNC6(btcoexist, true, true,
						   false, false);
			FUNC7(btcoexist, true, false,
						   false, 0x18);
		} else {
			FUNC6(btcoexist, true, true,
						   false, false);
			FUNC7(btcoexist, false, false,
						   false, 0x18);
		}
	} else {
		FUNC4(btcoexist, NORMAL_EXEC, 6);
		/* fw mechanism */
		if ((bt_rssi_state == BTC_RSSI_STATE_HIGH) ||
		    (bt_rssi_state == BTC_RSSI_STATE_STAY_HIGH)) {
			FUNC5(btcoexist, NORMAL_EXEC, true, 10);
		} else {
			FUNC5(btcoexist, NORMAL_EXEC, true, 14);
		}

		/* sw mechanism */
		if ((wifi_rssi_state == BTC_RSSI_STATE_HIGH) ||
		    (wifi_rssi_state == BTC_RSSI_STATE_STAY_HIGH)) {
			FUNC6(btcoexist, false, true,
						   false, false);
			FUNC7(btcoexist, true, false,
						   false, 0x18);
		} else {
			FUNC6(btcoexist, false, true,
						   false, false);
			FUNC7(btcoexist, false, false,
						   false, 0x18);
		}
	}
}