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
struct btc_coexist {int (* btc_read_4byte ) (struct btc_coexist*,int) ;scalar_t__ (* btc_read_1byte ) (struct btc_coexist*,int) ;int /*<<< orphan*/  (* btc_get ) (struct btc_coexist*,int /*<<< orphan*/ ,int*) ;scalar_t__ stop_coex_dm; scalar_t__ manual_control; struct rtl_priv* adapter; } ;
struct TYPE_2__ {int wifi_is_high_pri_task; int scan_ap_num; scalar_t__ c2h_bt_inquiry_page; scalar_t__ bt_disabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_ANT_PATH_PTA ; 
 int /*<<< orphan*/  BTC_GET_BL_HS_OPERATION ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_CONNECTED ; 
 int /*<<< orphan*/  BTC_GET_U1_AP_NUM ; 
 int /*<<< orphan*/  BTC_GET_U4_WIFI_LINK_STATUS ; 
 scalar_t__ BTC_SCAN_FINISH ; 
 scalar_t__ BTC_SCAN_START ; 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  FORCE_EXEC ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*) ; 
 TYPE_1__* coex_sta ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC8 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct btc_coexist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC12 (struct btc_coexist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC13 (struct btc_coexist*,int) ; 
 scalar_t__ FUNC14 (struct btc_coexist*,int) ; 
 scalar_t__ FUNC15 (struct btc_coexist*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC17 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC18 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC19 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 

void FUNC20(struct btc_coexist *btcoexist, u8 type)
{
	struct rtl_priv *rtlpriv = btcoexist->adapter;
	bool wifi_connected = false, bt_hs_on = false;
	u8 u8tmpa, u8tmpb;
	u32 u32tmp;
	u32 wifi_link_status = 0;
	u32 num_of_wifi_link = 0;
	bool bt_ctrl_agg_buf_size = false;
	u8 agg_buf_size = 5;

	if (btcoexist->manual_control || btcoexist->stop_coex_dm)
		return;

	if (type == BTC_SCAN_START) {
		coex_sta->wifi_is_high_pri_task = true;
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], SCAN START notify\n");
		/* Force antenna setup for no scan result issue */
		FUNC10(btcoexist, FORCE_EXEC, false, 8);
		FUNC12(btcoexist, BTC_ANT_PATH_PTA,
					     FORCE_EXEC, false, false);
		u32tmp = btcoexist->btc_read_4byte(btcoexist, 0x948);
		u8tmpa = btcoexist->btc_read_1byte(btcoexist, 0x765);
		u8tmpb = btcoexist->btc_read_1byte(btcoexist, 0x67);

		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], 0x948=0x%x, 0x765=0x%x, 0x67=0x%x\n",
			 u32tmp, u8tmpa, u8tmpb);
	} else {
		coex_sta->wifi_is_high_pri_task = false;
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], SCAN FINISH notify\n");

		btcoexist->btc_get(btcoexist, BTC_GET_U1_AP_NUM,
				   &coex_sta->scan_ap_num);
	}

	if (coex_sta->bt_disabled)
		return;

	btcoexist->btc_get(btcoexist, BTC_GET_BL_HS_OPERATION, &bt_hs_on);
	btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_CONNECTED,
			   &wifi_connected);

	FUNC11(btcoexist);

	btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_LINK_STATUS,
			   &wifi_link_status);
	num_of_wifi_link = wifi_link_status >> 16;
	if (num_of_wifi_link >= 2) {
		FUNC9(btcoexist, NORMAL_EXEC, 0, 0, 0, 0);
		FUNC8(btcoexist, NORMAL_EXEC, false,
					   bt_ctrl_agg_buf_size, agg_buf_size);
		FUNC7(btcoexist);
		return;
	}

	if (coex_sta->c2h_bt_inquiry_page) {
		FUNC4(btcoexist);
		return;
	} else if (bt_hs_on) {
		FUNC5(btcoexist);
		return;
	}

	if (BTC_SCAN_START == type) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], SCAN START notify\n");
		if (!wifi_connected)
			/* non-connected scan */
			FUNC3(btcoexist);
		else
			/* wifi is connected */
			FUNC1(btcoexist);
	} else if (BTC_SCAN_FINISH == type) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], SCAN FINISH notify\n");
		if (!wifi_connected)
			/* non-connected scan */
			FUNC2(btcoexist);
		else
			FUNC6(btcoexist);
	}
}