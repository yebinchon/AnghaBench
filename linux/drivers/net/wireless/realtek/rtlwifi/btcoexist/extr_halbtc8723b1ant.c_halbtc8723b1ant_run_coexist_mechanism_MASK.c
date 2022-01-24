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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct rtl_priv {int dummy; } ;
struct btc_bt_link_info {int sco_exist; scalar_t__ bt_link_exist; scalar_t__ a2dp_exist; } ;
struct btc_coexist {int /*<<< orphan*/  (* btc_get ) (struct btc_coexist*,int /*<<< orphan*/ ,int*) ;int /*<<< orphan*/  (* btc_set ) (struct btc_coexist*,int /*<<< orphan*/ ,int*) ;scalar_t__ stop_coex_dm; scalar_t__ manual_control; struct btc_bt_link_info bt_link_info; struct rtl_priv* adapter; } ;
struct TYPE_4__ {scalar_t__ bt_status; } ;
struct TYPE_3__ {scalar_t__ c2h_bt_inquiry_page; scalar_t__ bt_whck_test; scalar_t__ under_ips; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_GET_BL_HS_OPERATION ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_BUSY ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_CONNECTED ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_LINK ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_ROAM ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_SCAN ; 
 int /*<<< orphan*/  BTC_GET_U1_IOT_PEER ; 
 int /*<<< orphan*/  BTC_GET_U4_WIFI_BW ; 
 int /*<<< orphan*/  BTC_GET_U4_WIFI_LINK_STATUS ; 
 scalar_t__ BTC_IOT_PEER_BROADCOM ; 
 scalar_t__ BTC_IOT_PEER_CISCO ; 
 scalar_t__ BTC_IOT_PEER_UNKNOWN ; 
 int /*<<< orphan*/  BTC_SET_BL_INC_SCAN_DEV_NUM ; 
 int /*<<< orphan*/  BTC_SET_BL_MIRACAST_PLUS_BT ; 
 int BTC_WIFI_BW_HT40 ; 
 scalar_t__ BT_8723B_1ANT_BT_STATUS_ACL_BUSY ; 
 scalar_t__ BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY ; 
 scalar_t__ BT_8723B_1ANT_BT_STATUS_SCO_BUSY ; 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int WIFI_P2P_GO_CONNECTED ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*) ; 
 TYPE_2__* coex_dm ; 
 TYPE_1__* coex_sta ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC8 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC9 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct btc_coexist*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC15 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC16 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC17 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC18 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC19 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC20 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC21 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC22 (struct btc_coexist*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC23 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC24(struct btc_coexist *btcoexist)
{
	struct rtl_priv *rtlpriv = btcoexist->adapter;
	struct btc_bt_link_info *bt_link_info = &btcoexist->bt_link_info;
	bool wifi_connected = false, bt_hs_on = false, wifi_busy = false;
	bool increase_scan_dev_num = false;
	bool bt_ctrl_agg_buf_size = false;
	bool miracast_plus_bt = false;
	u8 agg_buf_size = 5;
	u8 iot_peer = BTC_IOT_PEER_UNKNOWN;
	u32 wifi_link_status = 0;
	u32 num_of_wifi_link = 0;
	u32 wifi_bw;

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

	if (coex_sta->bt_whck_test) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], wifi is under IPS !!!\n");
		FUNC5(btcoexist);
		return;
	}

	if (coex_dm->bt_status == BT_8723B_1ANT_BT_STATUS_ACL_BUSY ||
	    coex_dm->bt_status == BT_8723B_1ANT_BT_STATUS_SCO_BUSY ||
	    coex_dm->bt_status == BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY)
		increase_scan_dev_num = true;

	btcoexist->btc_set(btcoexist, BTC_SET_BL_INC_SCAN_DEV_NUM,
			   &increase_scan_dev_num);
	btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_CONNECTED,
			   &wifi_connected);
	btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_BUSY, &wifi_busy);

	btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_LINK_STATUS,
			   &wifi_link_status);
	num_of_wifi_link = wifi_link_status >> 16;

	if (num_of_wifi_link >= 2 ||
	    wifi_link_status & WIFI_P2P_GO_CONNECTED) {
		if (bt_link_info->bt_link_exist) {
			FUNC10(btcoexist, NORMAL_EXEC, 1, 1,
						   0, 1);
			miracast_plus_bt = true;
		} else {
			FUNC10(btcoexist, NORMAL_EXEC, 0, 0,
						   0, 0);
			miracast_plus_bt = false;
		}
		btcoexist->btc_set(btcoexist, BTC_SET_BL_MIRACAST_PLUS_BT,
				   &miracast_plus_bt);
		FUNC9(btcoexist, NORMAL_EXEC, false,
					   bt_ctrl_agg_buf_size, agg_buf_size);

		if ((bt_link_info->a2dp_exist || wifi_busy) &&
		    (coex_sta->c2h_bt_inquiry_page))
			FUNC4(btcoexist);
		else
			FUNC8(btcoexist);

		return;
	}

	miracast_plus_bt = false;
	btcoexist->btc_set(btcoexist, BTC_SET_BL_MIRACAST_PLUS_BT,
			   &miracast_plus_bt);
	btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_BW, &wifi_bw);

	if (bt_link_info->bt_link_exist && wifi_connected) {
		FUNC10(btcoexist, NORMAL_EXEC, 1, 1, 0, 1);

		btcoexist->btc_get(btcoexist, BTC_GET_U1_IOT_PEER, &iot_peer);

		if (iot_peer != BTC_IOT_PEER_CISCO &&
		    iot_peer != BTC_IOT_PEER_BROADCOM) {
			bool sco_exist = bt_link_info->sco_exist;

			FUNC9(btcoexist,
						   NORMAL_EXEC, sco_exist,
						   false, 0x5);
		} else {
			if (bt_link_info->sco_exist) {
				FUNC9(btcoexist,
							   NORMAL_EXEC, true,
							   false, 0x5);
			} else {
				if (wifi_bw == BTC_WIFI_BW_HT40)
					FUNC9(
						btcoexist, NORMAL_EXEC, false,
						true, 0x10);
				else
					FUNC9(
						btcoexist, NORMAL_EXEC, false,
						true, 0x8);
			}
		}

		FUNC11(btcoexist, true);
	} else {
		FUNC10(btcoexist, NORMAL_EXEC, 0, 0, 0, 0);

		FUNC9(btcoexist, NORMAL_EXEC, false, false,
					   0x5);

		FUNC11(btcoexist, false);
	}
	btcoexist->btc_get(btcoexist, BTC_GET_BL_HS_OPERATION, &bt_hs_on);

	if (coex_sta->c2h_bt_inquiry_page) {
		FUNC4(btcoexist);
		return;
	} else if (bt_hs_on) {
		FUNC6(btcoexist);
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
				FUNC3(
								     btcoexist);
			else
				FUNC1(
								     btcoexist);
		} else {
			FUNC2(btcoexist);
		}
	} else { /* wifi LPS/Busy */
		FUNC7(btcoexist);
	}
}