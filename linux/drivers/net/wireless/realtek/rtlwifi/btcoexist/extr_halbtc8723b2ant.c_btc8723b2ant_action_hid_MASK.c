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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct btc_coexist {int /*<<< orphan*/  (* btc_get ) (struct btc_coexist*,int /*<<< orphan*/ ,scalar_t__*) ;int /*<<< orphan*/  (* btc_set_rf_reg ) (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int) ;} ;
struct TYPE_2__ {scalar_t__ switch_thres_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_GET_U4_WIFI_BW ; 
 int /*<<< orphan*/  BTC_PS_WIFI_NATIVE ; 
 int /*<<< orphan*/  BTC_RF_A ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ BTC_RSSI_STATE_HIGH ; 
 scalar_t__ BTC_RSSI_STATE_STAY_HIGH ; 
 scalar_t__ BTC_WIFI_BW_HT40 ; 
 scalar_t__ BTC_WIFI_BW_LEGACY ; 
 scalar_t__ BT_8723B_2ANT_BT_RSSI_COEXSWITCH_THRES ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 scalar_t__ FUNC1 (struct btc_coexist*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct btc_coexist*,int,int,int,int) ; 
 scalar_t__ FUNC9 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* coex_dm ; 
 int /*<<< orphan*/  FUNC10 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct btc_coexist*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC12(struct btc_coexist *btcoexist)
{
	u8 wifi_rssi_state, bt_rssi_state;
	u32 wifi_bw;
	u8 tmp = BT_8723B_2ANT_BT_RSSI_COEXSWITCH_THRES -
			coex_dm->switch_thres_offset;

	wifi_rssi_state = FUNC9(btcoexist, 0, 2, 15, 0);
	bt_rssi_state = FUNC1(btcoexist, 2, tmp, 0);

	btcoexist->btc_set_rf_reg(btcoexist, BTC_RF_A, 0x1, 0xfffff, 0x0);

	FUNC5(btcoexist, NORMAL_EXEC, false, false, 0x8);
	FUNC4(btcoexist, NORMAL_EXEC, 6);

	if (FUNC0(bt_rssi_state))
		FUNC3(btcoexist, NORMAL_EXEC, 2);
	else
		FUNC3(btcoexist, NORMAL_EXEC, 0);

	btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_BW, &wifi_bw);

	if (wifi_bw == BTC_WIFI_BW_LEGACY)
		/* for HID at 11b/g mode */
		FUNC2(btcoexist, NORMAL_EXEC, 7);
	else
		/* for HID quality & wifi performance balance at 11n mode */
		FUNC2(btcoexist, NORMAL_EXEC, 9);

	FUNC6(btcoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);

	if ((bt_rssi_state == BTC_RSSI_STATE_HIGH) ||
	    (bt_rssi_state == BTC_RSSI_STATE_STAY_HIGH))
		FUNC7(btcoexist, NORMAL_EXEC, true, 9);
	else
		FUNC7(btcoexist, NORMAL_EXEC, true, 13);

	/* sw mechanism */
	if (wifi_bw == BTC_WIFI_BW_HT40)
		FUNC8(btcoexist, true, true, false, false);
	else
		FUNC8(btcoexist, false, true, false, false);
}