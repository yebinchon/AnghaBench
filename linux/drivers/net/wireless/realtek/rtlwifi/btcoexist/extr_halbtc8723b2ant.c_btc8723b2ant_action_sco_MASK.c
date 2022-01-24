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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct btc_coexist {int /*<<< orphan*/  (* btc_get ) (struct btc_coexist*,int /*<<< orphan*/ ,scalar_t__*) ;int /*<<< orphan*/  (* btc_set_rf_reg ) (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int) ;} ;
struct TYPE_2__ {scalar_t__ switch_thres_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_GET_U4_WIFI_BW ; 
 int /*<<< orphan*/  BTC_RF_A ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BTC_WIFI_BW_HT40 ; 
 scalar_t__ BTC_WIFI_BW_LEGACY ; 
 scalar_t__ BT_8723B_2ANT_BT_RSSI_COEXSWITCH_THRES ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* coex_dm ; 
 int /*<<< orphan*/  FUNC9 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct btc_coexist*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC11(struct btc_coexist *btcoexist)
{
	u8 wifi_rssi_state, bt_rssi_state;
	u32 wifi_bw;

	wifi_rssi_state = FUNC8(btcoexist, 0, 2, 15, 0);
	bt_rssi_state = FUNC1(
		btcoexist, 2, BT_8723B_2ANT_BT_RSSI_COEXSWITCH_THRES -
					       coex_dm->switch_thres_offset,
		0);

	btcoexist->btc_set_rf_reg(btcoexist, BTC_RF_A, 0x1, 0xfffff, 0x0);

	FUNC5(btcoexist, NORMAL_EXEC, false, false, 0x8);
	FUNC4(btcoexist, NORMAL_EXEC, 4);

	if (FUNC0(bt_rssi_state))
		FUNC3(btcoexist, NORMAL_EXEC, 2);
	else
		FUNC3(btcoexist, NORMAL_EXEC, 0);

	btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_BW, &wifi_bw);

	if (BTC_WIFI_BW_LEGACY == wifi_bw)
		/* for SCO quality at 11b/g mode */
		FUNC2(btcoexist, NORMAL_EXEC, 2);
	else
		/* for SCO quality & wifi performance balance at 11n mode */
		FUNC2(btcoexist, NORMAL_EXEC, 8);

	/* for voice quality */
	FUNC6(btcoexist, NORMAL_EXEC, false, 0);

	/* sw mechanism */
	if (BTC_WIFI_BW_HT40 == wifi_bw) {
		FUNC7(btcoexist, true, true,
					  false, false);
	} else {
		FUNC7(btcoexist, false, true,
					  false, false);
	}
}