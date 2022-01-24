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
struct rtl_priv {int dummy; } ;
struct btc_coexist {int /*<<< orphan*/  (* btc_get ) (struct btc_coexist*,int /*<<< orphan*/ ,scalar_t__*) ;struct rtl_priv* adapter; } ;
struct TYPE_2__ {int auto_tdma_adjust; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_GET_U4_WIFI_BW ; 
 scalar_t__ BTC_RSSI_STATE_HIGH ; 
 scalar_t__ BTC_RSSI_STATE_LOW ; 
 scalar_t__ BTC_RSSI_STATE_MEDIUM ; 
 scalar_t__ BTC_RSSI_STATE_STAY_HIGH ; 
 scalar_t__ BTC_RSSI_STATE_STAY_LOW ; 
 scalar_t__ BTC_RSSI_STATE_STAY_MEDIUM ; 
 scalar_t__ BTC_WIFI_BW_HT40 ; 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct btc_coexist*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct btc_coexist*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct btc_coexist*,int,int,int) ; 
 scalar_t__ FUNC11 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* coex_dm ; 
 int /*<<< orphan*/  FUNC12 (struct btc_coexist*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC13(struct btc_coexist *btcoexist)
{
	struct rtl_priv *rtlpriv = btcoexist->adapter;
	u8 wifi_rssi_state, bt_rssi_state = BTC_RSSI_STATE_HIGH;
	u32 wifi_bw;
	bool long_dist = false;

	wifi_rssi_state = FUNC11(btcoexist, 0, 2, 15, 0);
	bt_rssi_state = FUNC1(btcoexist, 3, 34, 42);

	if ((bt_rssi_state == BTC_RSSI_STATE_LOW ||
	     bt_rssi_state == BTC_RSSI_STATE_STAY_LOW) &&
	    (wifi_rssi_state == BTC_RSSI_STATE_LOW ||
	     wifi_rssi_state == BTC_RSSI_STATE_STAY_LOW)) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], A2dp, wifi/bt rssi both LOW!!\n");
		long_dist = true;
	}
	if (long_dist) {
		FUNC9(btcoexist, NORMAL_EXEC, 2);
		FUNC5(btcoexist, NORMAL_EXEC, false, true,
					0x4);
	} else {
		FUNC9(btcoexist, NORMAL_EXEC, 1);
		FUNC5(btcoexist, NORMAL_EXEC, false, false,
					0x8);
	}

	FUNC4(btcoexist, NORMAL_EXEC, 6);

	if (long_dist)
		FUNC2(btcoexist, NORMAL_EXEC, 0);
	else
		FUNC2(btcoexist, NORMAL_EXEC, 2);

	if (long_dist) {
		FUNC6(btcoexist, NORMAL_EXEC, true, 17);
		coex_dm->auto_tdma_adjust = false;
		FUNC3(btcoexist, NORMAL_EXEC, 0);
	} else {
		if ((bt_rssi_state == BTC_RSSI_STATE_LOW) ||
		    (bt_rssi_state == BTC_RSSI_STATE_STAY_LOW)) {
			FUNC10(btcoexist, false,
							  true, 1);
			FUNC3(btcoexist, NORMAL_EXEC, 0);
		} else if ((bt_rssi_state == BTC_RSSI_STATE_MEDIUM) ||
			   (bt_rssi_state == BTC_RSSI_STATE_STAY_MEDIUM)) {
			FUNC10(btcoexist, false,
							  false, 1);
			FUNC3(btcoexist, NORMAL_EXEC, 2);
		} else if ((bt_rssi_state == BTC_RSSI_STATE_HIGH) ||
			   (bt_rssi_state == BTC_RSSI_STATE_STAY_HIGH)) {
			FUNC10(btcoexist, false,
							  false, 1);
			FUNC3(btcoexist, NORMAL_EXEC, 4);
		}
	}

	/* sw mechanism */
	btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_BW, &wifi_bw);
	if (BTC_WIFI_BW_HT40 == wifi_bw) {
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