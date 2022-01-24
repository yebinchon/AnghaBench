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
struct btc_coexist {int /*<<< orphan*/  (* btc_get ) (struct btc_coexist*,int /*<<< orphan*/ ,scalar_t__*) ;int /*<<< orphan*/  (* btc_set_rf_reg ) (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_GET_U4_WIFI_BW ; 
 int /*<<< orphan*/  BTC_PS_WIFI_NATIVE ; 
 int /*<<< orphan*/  BTC_RF_A ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ BTC_RSSI_STATE_HIGH ; 
 scalar_t__ BTC_RSSI_STATE_STAY_HIGH ; 
 scalar_t__ BTC_WIFI_BW_HT40 ; 
 scalar_t__ BTC_WIFI_BW_LEGACY ; 
 int /*<<< orphan*/  BT_8821A_2ANT_BT_RSSI_COEXSWITCH_THRES ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 scalar_t__ FUNC1 (struct btc_coexist*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct btc_coexist*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct btc_coexist*,int,int,int,int) ; 
 scalar_t__ FUNC10 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct btc_coexist*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC13(struct btc_coexist *btcoexist)
{
	u8 wifi_rssi_state, bt_rssi_state;
	u32 wifi_bw;

	wifi_rssi_state = FUNC10(btcoexist, 0, 2, 15, 0);
	bt_rssi_state = FUNC1(btcoexist,
		2, BT_8821A_2ANT_BT_RSSI_COEXSWITCH_THRES, 0);

	btcoexist->btc_set_rf_reg(btcoexist, BTC_RF_A, 0x1, 0xfffff, 0x0);

	FUNC5(btcoexist, NORMAL_EXEC, false, false, 0x8);
	FUNC4(btcoexist, NORMAL_EXEC, 6);

	if (FUNC0(bt_rssi_state))
		FUNC3(btcoexist, NORMAL_EXEC, true);
	else
		FUNC3(btcoexist, NORMAL_EXEC, false);

	btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_BW, &wifi_bw);

	if (wifi_bw == BTC_WIFI_BW_LEGACY) {
		/* for HID at 11b/g mode */
		FUNC2(btcoexist, NORMAL_EXEC, 7);
	} else {
		/* for HID quality & wifi performance balance at 11n mode */
		FUNC2(btcoexist, NORMAL_EXEC, 2);
	}

	FUNC6(btcoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
	FUNC7(btcoexist, NORMAL_EXEC, true, 24);

	if (wifi_bw == BTC_WIFI_BW_HT40) {
		/* sw mechanism */
		if ((wifi_rssi_state == BTC_RSSI_STATE_HIGH) ||
		    (wifi_rssi_state == BTC_RSSI_STATE_STAY_HIGH)) {
			FUNC8(btcoexist, true, true,
						   false, false);
			FUNC9(btcoexist, true, false,
						   false, 0x18);
		} else {
			FUNC8(btcoexist, true, true,
						   false, false);
			FUNC9(btcoexist, false, false,
						   false, 0x18);
		}
	} else {
		/* sw mechanism */
		if ((wifi_rssi_state == BTC_RSSI_STATE_HIGH) ||
		    (wifi_rssi_state == BTC_RSSI_STATE_STAY_HIGH)) {
			FUNC8(btcoexist, false, true,
						   false, false);
			FUNC9(btcoexist, true, false,
						   false, 0x18);
		} else {
			FUNC8(btcoexist, false, true,
						   false, false);
			FUNC9(btcoexist, false, false,
						   false, 0x18);
		}
	}
}