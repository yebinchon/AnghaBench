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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct btc_coexist {int /*<<< orphan*/  (* btc_get ) (struct btc_coexist*,int /*<<< orphan*/ ,int*) ;int /*<<< orphan*/  (* btc_set_rf_reg ) (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_GET_U1_AP_NUM ; 
 int /*<<< orphan*/  BTC_GET_U4_WIFI_BW ; 
 int /*<<< orphan*/  BTC_PS_LPS_ON ; 
 int /*<<< orphan*/  BTC_PS_WIFI_NATIVE ; 
 int /*<<< orphan*/  BTC_RF_A ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int BTC_RSSI_STATE_HIGH ; 
 int BTC_RSSI_STATE_STAY_HIGH ; 
 scalar_t__ BTC_WIFI_BW_HT40 ; 
 scalar_t__ BTC_WIFI_BW_LEGACY ; 
 int /*<<< orphan*/  BT_8821A_2ANT_BT_RSSI_COEXSWITCH_THRES ; 
 int BT_8821A_2ANT_WIFI_RSSI_COEXSWITCH_THRES ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int FUNC2 (struct btc_coexist*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct btc_coexist*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct btc_coexist*,int,int,int,int) ; 
 int FUNC11 (struct btc_coexist*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct btc_coexist*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC15(struct btc_coexist *btcoexist)
{
	u32 wifi_bw;
	u8 wifi_rssi_state, wifi_rssi_state1, bt_rssi_state;
	u8 ap_num = 0;

	wifi_rssi_state = FUNC11(btcoexist, 0, 2, 15, 0);
	wifi_rssi_state1 = FUNC11(btcoexist, 1, 2,
				BT_8821A_2ANT_WIFI_RSSI_COEXSWITCH_THRES, 0);
	bt_rssi_state = FUNC2(btcoexist,
				3, BT_8821A_2ANT_BT_RSSI_COEXSWITCH_THRES, 37);

	btcoexist->btc_set_rf_reg(btcoexist, BTC_RF_A, 0x1, 0xfffff, 0x0);

	FUNC6(btcoexist, NORMAL_EXEC, false, true, 0x5);
	FUNC5(btcoexist, NORMAL_EXEC, 6);

	btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_BW, &wifi_bw);
	if (wifi_bw == BTC_WIFI_BW_LEGACY) {
		if (FUNC0(bt_rssi_state))
			FUNC4(btcoexist, NORMAL_EXEC, 2);
		else if (FUNC1(bt_rssi_state))
			FUNC4(btcoexist, NORMAL_EXEC, 2);
		else
			FUNC4(btcoexist, NORMAL_EXEC, 0);
	} else {
		/* only 802.11N mode we have to dec bt power to 4 degree */
		if (FUNC0(bt_rssi_state)) {
			btcoexist->btc_get(btcoexist, BTC_GET_U1_AP_NUM,
					   &ap_num);
			if (ap_num < 10)
				FUNC4(btcoexist,
							NORMAL_EXEC, 4);
			else
				FUNC4(btcoexist,
							NORMAL_EXEC, 2);
		} else if (FUNC1(bt_rssi_state)) {
			FUNC4(btcoexist, NORMAL_EXEC, 2);
		} else {
			FUNC4(btcoexist, NORMAL_EXEC, 0);
		}
	}

	if (wifi_bw == BTC_WIFI_BW_LEGACY) {
		FUNC3(btcoexist, NORMAL_EXEC, 7);
		FUNC7(btcoexist, BTC_PS_WIFI_NATIVE,
					      0x0, 0x0);
	} else {
		FUNC3(btcoexist, NORMAL_EXEC, 14);
		FUNC7(btcoexist, BTC_PS_LPS_ON, 0x50,
					      0x4);
	}

	if ((bt_rssi_state == BTC_RSSI_STATE_HIGH) ||
	    (bt_rssi_state == BTC_RSSI_STATE_STAY_HIGH)) {
		FUNC8(btcoexist, NORMAL_EXEC, true, 23);
	} else {
		FUNC8(btcoexist, NORMAL_EXEC, true, 23);
	}

	/* sw mechanism */
	if (wifi_bw == BTC_WIFI_BW_HT40) {
		if ((wifi_rssi_state == BTC_RSSI_STATE_HIGH) ||
		    (wifi_rssi_state == BTC_RSSI_STATE_STAY_HIGH)) {
			FUNC9(btcoexist, true, true,
						   false, false);
			FUNC10(btcoexist, true, false,
						   false, 0x18);
		} else {
			FUNC9(btcoexist, true, true,
						   false, false);
			FUNC10(btcoexist, false, false,
						   false, 0x18);
		}
	} else {
		if ((wifi_rssi_state == BTC_RSSI_STATE_HIGH) ||
		    (wifi_rssi_state == BTC_RSSI_STATE_STAY_HIGH)) {
			FUNC9(btcoexist, false, true,
						   false, false);
			FUNC10(btcoexist, true, false,
						   false, 0x18);
		} else {
			FUNC9(btcoexist, false, true,
						   false, false);
			FUNC10(btcoexist, false, false,
						   false, 0x18);
		}
	}
}