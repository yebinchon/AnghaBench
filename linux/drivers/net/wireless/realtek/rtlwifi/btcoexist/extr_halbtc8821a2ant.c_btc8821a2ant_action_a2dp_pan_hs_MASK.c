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
 int /*<<< orphan*/  BTC_PS_LPS_ON ; 
 int /*<<< orphan*/  BTC_PS_WIFI_NATIVE ; 
 int /*<<< orphan*/  BTC_RF_A ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ BTC_RSSI_STATE_HIGH ; 
 scalar_t__ BTC_RSSI_STATE_STAY_HIGH ; 
 scalar_t__ BTC_WIFI_BW_HT40 ; 
 int /*<<< orphan*/  BT_8821A_2ANT_BT_RSSI_COEXSWITCH_THRES ; 
 int BT_8821A_2ANT_WIFI_RSSI_COEXSWITCH_THRES ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 scalar_t__ FUNC1 (struct btc_coexist*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct btc_coexist*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct btc_coexist*,int,int,int) ; 
 scalar_t__ FUNC10 (struct btc_coexist*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct btc_coexist*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC13(struct btc_coexist *btcoexist)
{
	u8 wifi_rssi_state, wifi_rssi_state1, bt_rssi_state;
	u32 wifi_bw;

	wifi_rssi_state = FUNC10(btcoexist, 0, 2, 15, 0);
	wifi_rssi_state1 = FUNC10(btcoexist, 1, 2,
				BT_8821A_2ANT_WIFI_RSSI_COEXSWITCH_THRES, 0);
	bt_rssi_state = FUNC1(btcoexist,
		2, BT_8821A_2ANT_BT_RSSI_COEXSWITCH_THRES, 0);

	btcoexist->btc_set_rf_reg(btcoexist, BTC_RF_A, 0x1, 0xfffff, 0x0);

	FUNC5(btcoexist, NORMAL_EXEC, false, false, 0x8);
	FUNC4(btcoexist, NORMAL_EXEC, 6);

	if (FUNC0(bt_rssi_state))
		FUNC3(btcoexist, NORMAL_EXEC, 2);
	else
		FUNC3(btcoexist, NORMAL_EXEC, 0);

	if (FUNC0(wifi_rssi_state1) && FUNC0(bt_rssi_state)) {
		FUNC2(btcoexist, NORMAL_EXEC, 7);
		FUNC6(btcoexist, BTC_PS_WIFI_NATIVE,
					      0x0, 0x0);
	} else {
		FUNC2(btcoexist, NORMAL_EXEC, 13);
		FUNC6(btcoexist, BTC_PS_LPS_ON, 0x50,
					      0x4);
	}

	FUNC9(btcoexist, false, true, 2);

	/* sw mechanism */
	btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_BW, &wifi_bw);
	if (wifi_bw == BTC_WIFI_BW_HT40) {
		if ((wifi_rssi_state == BTC_RSSI_STATE_HIGH) ||
		    (wifi_rssi_state == BTC_RSSI_STATE_STAY_HIGH)) {
			FUNC7(btcoexist, true, false,
						   false, false);
			FUNC8(btcoexist, true, false,
						   false, 0x18);
		} else {
			FUNC7(btcoexist, true, false,
						   false, false);
			FUNC8(btcoexist, false, false,
						   false, 0x18);
		}
	} else {
		if ((wifi_rssi_state == BTC_RSSI_STATE_HIGH) ||
		    (wifi_rssi_state == BTC_RSSI_STATE_STAY_HIGH)) {
			FUNC7(btcoexist, false, false,
						   false, false);
			FUNC8(btcoexist, true, false,
						   false, 0x18);
		} else {
			FUNC7(btcoexist, false, false,
						   false, false);
			FUNC8(btcoexist, false, false,
						   false, 0x18);
		}
	}
}