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
typedef  int u8 ;
typedef  int u32 ;
struct rtl_priv {int dummy; } ;
struct btc_bt_link_info {scalar_t__ pan_exist; scalar_t__ a2dp_exist; scalar_t__ hid_exist; scalar_t__ sco_exist; } ;
struct btc_coexist {int /*<<< orphan*/  (* btc_get ) (struct btc_coexist*,int /*<<< orphan*/ ,int*) ;int /*<<< orphan*/  (* btc_set ) (struct btc_coexist*,int /*<<< orphan*/ ,int*) ;scalar_t__ stop_coex_dm; scalar_t__ manual_control; struct btc_bt_link_info bt_link_info; struct rtl_priv* adapter; } ;
struct TYPE_4__ {scalar_t__ bt_status; } ;
struct TYPE_3__ {scalar_t__ c2h_bt_inquiry_page; scalar_t__ under_ips; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_GET_BL_HS_OPERATION ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_CONNECTED ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_LINK ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_ROAM ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_SCAN ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_UNDER_5G ; 
 int /*<<< orphan*/  BTC_GET_U4_WIFI_LINK_STATUS ; 
 int BTC_RSSI_STATE_HIGH ; 
 int /*<<< orphan*/  BTC_SET_BL_INC_SCAN_DEV_NUM ; 
 scalar_t__ BT_8821A_1ANT_BT_STATUS_ACL_BUSY ; 
 scalar_t__ BT_8821A_1ANT_BT_STATUS_ACL_SCO_BUSY ; 
 scalar_t__ BT_8821A_1ANT_BT_STATUS_SCO_BUSY ; 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int WIFI_P2P_GO_CONNECTED ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC8 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC9 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct btc_coexist*) ; 
 int FUNC12 (struct btc_coexist*,int,int,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* coex_dm ; 
 TYPE_1__* coex_sta ; 
 int /*<<< orphan*/  FUNC13 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC15 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC16 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC17 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC18 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC19 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC20 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC21(struct btc_coexist *btcoexist)
{
	struct rtl_priv *rtlpriv = btcoexist->adapter;
	struct btc_bt_link_info *bt_link_info = &btcoexist->bt_link_info;
	bool wifi_connected = false, bt_hs_on = false;
	bool increase_scan_dev_num = false;
	bool bt_ctrl_agg_buf_size = false;
	u8 agg_buf_size = 5;
	u8 wifi_rssi_state = BTC_RSSI_STATE_HIGH;
	u32 wifi_link_status = 0;
	u32 num_of_wifi_link = 0;
	bool wifi_under_5g = false;

	FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
		 "[BTCoex], RunCoexistMechanism()===>\n");

	if (btcoexist->manual_control) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], RunCoexistMechanism(), return for Manual CTRL <===\n");
		return;
	}

	if (btcoexist->stop_coex_dm) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], RunCoexistMechanism(), return for Stop Coex DM <===\n");
		return;
	}

	if (coex_sta->under_ips) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], wifi is under IPS !!!\n");
		return;
	}

	btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_UNDER_5G, &wifi_under_5g);
	if (wifi_under_5g) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], RunCoexistMechanism(), return for 5G <===\n");
		FUNC8(btcoexist);
		return;
	}

	if ((BT_8821A_1ANT_BT_STATUS_ACL_BUSY == coex_dm->bt_status) ||
	    (BT_8821A_1ANT_BT_STATUS_SCO_BUSY == coex_dm->bt_status) ||
	    (BT_8821A_1ANT_BT_STATUS_ACL_SCO_BUSY == coex_dm->bt_status))
		increase_scan_dev_num = true;

	btcoexist->btc_set(btcoexist, BTC_SET_BL_INC_SCAN_DEV_NUM,
			   &increase_scan_dev_num);

	btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_CONNECTED,
			   &wifi_connected);

	btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_LINK_STATUS,
			   &wifi_link_status);
	num_of_wifi_link = wifi_link_status >> 16;
	if ((num_of_wifi_link >= 2) ||
	    (wifi_link_status & WIFI_P2P_GO_CONNECTED)) {
		FUNC10(btcoexist, NORMAL_EXEC, 0, 0, 0, 0);
		FUNC9(btcoexist, NORMAL_EXEC, false,
					bt_ctrl_agg_buf_size, agg_buf_size);
		FUNC5(btcoexist);
		return;
	}

	if (!bt_link_info->sco_exist && !bt_link_info->hid_exist) {
		FUNC10(btcoexist, NORMAL_EXEC, 0, 0, 0, 0);
	} else {
		if (wifi_connected) {
			wifi_rssi_state =
				FUNC12(btcoexist, 1, 2,
							     30, 0);
			FUNC10(btcoexist,
						NORMAL_EXEC, 1, 1,
						0, 1);
		} else {
			FUNC10(btcoexist, NORMAL_EXEC,
						0, 0, 0, 0);
		}
	}

	if (bt_link_info->sco_exist) {
		bt_ctrl_agg_buf_size = true;
		agg_buf_size = 0x3;
	} else if (bt_link_info->hid_exist) {
		bt_ctrl_agg_buf_size = true;
		agg_buf_size = 0x5;
	} else if (bt_link_info->a2dp_exist || bt_link_info->pan_exist) {
		bt_ctrl_agg_buf_size = true;
		agg_buf_size = 0x8;
	}
	FUNC9(btcoexist, NORMAL_EXEC, false,
				bt_ctrl_agg_buf_size, agg_buf_size);

	FUNC11(btcoexist);

	btcoexist->btc_get(btcoexist, BTC_GET_BL_HS_OPERATION, &bt_hs_on);
	if (coex_sta->c2h_bt_inquiry_page) {
		FUNC2(btcoexist);
		return;
	} else if (bt_hs_on) {
		FUNC3(btcoexist);
		return;
	}

	if (!wifi_connected) {
		bool scan = false, link = false, roam = false;

		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], wifi is non connected-idle !!!\n");

		btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_SCAN, &scan);
		btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_LINK, &link);
		btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_ROAM, &roam);

		if (scan || link || roam) {
			if (scan)
				FUNC1(btcoexist);
			else
				FUNC7(
					btcoexist);
		} else {
			FUNC6(btcoexist);
		}
	} else {
		/* wifi LPS/Busy */
		FUNC4(btcoexist);
	}
}