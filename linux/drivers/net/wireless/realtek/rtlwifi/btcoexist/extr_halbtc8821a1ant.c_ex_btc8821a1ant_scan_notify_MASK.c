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
typedef  int u32 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int /*<<< orphan*/  (* btc_get ) (struct btc_coexist*,int /*<<< orphan*/ ,int*) ;scalar_t__ stop_coex_dm; scalar_t__ manual_control; struct rtl_priv* adapter; } ;
struct TYPE_2__ {int wifi_is_high_pri_task; scalar_t__ c2h_bt_inquiry_page; scalar_t__ bt_disabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_GET_BL_HS_OPERATION ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_CONNECTED ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_UNDER_5G ; 
 int /*<<< orphan*/  BTC_GET_U4_WIFI_LINK_STATUS ; 
 scalar_t__ BTC_SCAN_FINISH ; 
 scalar_t__ BTC_SCAN_START ; 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  FORCE_EXEC ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC8 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC9 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct btc_coexist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct btc_coexist*) ; 
 TYPE_1__* coex_sta ; 
 int /*<<< orphan*/  FUNC13 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC15 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC16 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 

void FUNC17(struct btc_coexist *btcoexist, u8 type)
{
	struct rtl_priv *rtlpriv = btcoexist->adapter;
	bool wifi_connected = false, bt_hs_on = false;
	bool bt_ctrl_agg_buf_size = false;
	bool wifi_under_5g = false;
	u32 wifi_link_status = 0;
	u32 num_of_wifi_link = 0;
	u8 agg_buf_size = 5;

	if (btcoexist->manual_control || btcoexist->stop_coex_dm)
		return;
	btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_UNDER_5G, &wifi_under_5g);
	if (wifi_under_5g) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], RunCoexistMechanism(), return for 5G <===\n");
		FUNC8(btcoexist);
		return;
	}

	if (type == BTC_SCAN_START) {
		coex_sta->wifi_is_high_pri_task = true;
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], SCAN START notify\n");

		/* Force antenna setup for no scan result issue */
		FUNC11(btcoexist, FORCE_EXEC, false, 8);
	} else {
		coex_sta->wifi_is_high_pri_task = false;
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], SCAN FINISH notify\n");
	}

	if (coex_sta->bt_disabled)
		return;

	btcoexist->btc_get(btcoexist,
		 BTC_GET_BL_HS_OPERATION, &bt_hs_on);
	btcoexist->btc_get(btcoexist,
		 BTC_GET_BL_WIFI_CONNECTED, &wifi_connected);

	FUNC12(btcoexist);

	btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_LINK_STATUS,
			   &wifi_link_status);
	num_of_wifi_link = wifi_link_status >> 16;
	if (num_of_wifi_link >= 2) {
		FUNC10(btcoexist, NORMAL_EXEC, 0, 0, 0, 0);
		FUNC9(btcoexist, NORMAL_EXEC, false,
					bt_ctrl_agg_buf_size, agg_buf_size);
		FUNC6(btcoexist);
		return;
	}

	if (coex_sta->c2h_bt_inquiry_page) {
		FUNC2(btcoexist);
		return;
	} else if (bt_hs_on) {
		FUNC3(btcoexist);
		return;
	}

	if (BTC_SCAN_START == type) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], SCAN START notify\n");
		if (!wifi_connected) {
			/* non-connected scan */
			FUNC1(btcoexist);
		} else {
			/* wifi is connected */
			FUNC5(btcoexist);
		}
	} else if (BTC_SCAN_FINISH == type) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], SCAN FINISH notify\n");
		if (!wifi_connected) {
			/* non-connected scan */
			FUNC7(btcoexist);
		} else {
			FUNC4(btcoexist);
		}
	}
}