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
struct rtl_priv {int dummy; } ;
struct btc_bt_link_info {scalar_t__ hid_exist; scalar_t__ sco_exist; } ;
struct btc_coexist {int /*<<< orphan*/  (* btc_set ) (struct btc_coexist*,int /*<<< orphan*/ ,int*) ;int /*<<< orphan*/  (* btc_get ) (struct btc_coexist*,int /*<<< orphan*/ ,int*) ;struct btc_bt_link_info bt_link_info; struct rtl_priv* adapter; } ;
struct TYPE_2__ {scalar_t__ bt_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_GET_BL_HS_OPERATION ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_BUSY ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_CONNECTED ; 
 int /*<<< orphan*/  BTC_SET_ACT_DISABLE_LOW_POWER ; 
 scalar_t__ BT_8192E_2ANT_BT_STATUS_CONNECTED_IDLE ; 
 scalar_t__ BT_8192E_2ANT_BT_STATUS_NON_CONNECTED_IDLE ; 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* coex_dm ; 
 int /*<<< orphan*/  FUNC9 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC15 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static bool FUNC16(struct btc_coexist *btcoexist)
{
	struct rtl_priv *rtlpriv = btcoexist->adapter;
	struct btc_bt_link_info *bt_link_info = &btcoexist->bt_link_info;
	bool common = false, wifi_connected = false, wifi_busy = false;
	bool bt_hs_on = false, low_pwr_disable = false;

	btcoexist->btc_get(btcoexist, BTC_GET_BL_HS_OPERATION, &bt_hs_on);
	btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_CONNECTED,
			   &wifi_connected);
	btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_BUSY, &wifi_busy);

	if (bt_link_info->sco_exist || bt_link_info->hid_exist)
		FUNC4(btcoexist, NORMAL_EXEC, 1, 0, 0, 0);
	else
		FUNC4(btcoexist, NORMAL_EXEC, 0, 0, 0, 0);

	if (!wifi_connected) {
		low_pwr_disable = false;
		btcoexist->btc_set(btcoexist, BTC_SET_ACT_DISABLE_LOW_POWER,
				   &low_pwr_disable);

		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], Wifi non-connected idle!!\n");

		if ((BT_8192E_2ANT_BT_STATUS_NON_CONNECTED_IDLE ==
		     coex_dm->bt_status) ||
		    (BT_8192E_2ANT_BT_STATUS_CONNECTED_IDLE ==
		     coex_dm->bt_status)) {
			FUNC8(btcoexist, NORMAL_EXEC, 2);
			FUNC1(btcoexist,
							  NORMAL_EXEC, 1);
			FUNC5(btcoexist, NORMAL_EXEC, false, 0);
		} else {
			FUNC8(btcoexist, NORMAL_EXEC, 1);
			FUNC1(btcoexist,
							  NORMAL_EXEC, 0);
			FUNC5(btcoexist, NORMAL_EXEC, false, 1);
		}

		FUNC3(btcoexist, NORMAL_EXEC, 6);
		FUNC2(btcoexist, NORMAL_EXEC, 0);

		FUNC6(btcoexist, false, false, false,
					   false);
		FUNC7(btcoexist, false, false, false,
					   0x18);

		common = true;
	} else {
		if (BT_8192E_2ANT_BT_STATUS_NON_CONNECTED_IDLE ==
		    coex_dm->bt_status) {
			low_pwr_disable = false;
			btcoexist->btc_set(btcoexist,
					   BTC_SET_ACT_DISABLE_LOW_POWER,
					   &low_pwr_disable);

			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "Wifi connected + BT non connected-idle!!\n");

			FUNC8(btcoexist, NORMAL_EXEC, 2);
			FUNC1(btcoexist,
							  NORMAL_EXEC, 1);
			FUNC5(btcoexist, NORMAL_EXEC, false, 0);
			FUNC3(btcoexist,
						      NORMAL_EXEC, 6);
			FUNC2(btcoexist, NORMAL_EXEC, 0);

			FUNC6(btcoexist, false, false,
						   false, false);
			FUNC7(btcoexist, false, false,
						   false, 0x18);

			common = true;
		} else if (BT_8192E_2ANT_BT_STATUS_CONNECTED_IDLE ==
			   coex_dm->bt_status) {
			low_pwr_disable = true;
			btcoexist->btc_set(btcoexist,
					   BTC_SET_ACT_DISABLE_LOW_POWER,
					   &low_pwr_disable);

			if (bt_hs_on)
				return false;
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "Wifi connected + BT connected-idle!!\n");

			FUNC8(btcoexist,
						    NORMAL_EXEC, 2);
			FUNC1(btcoexist,
							  NORMAL_EXEC, 1);
			FUNC5(btcoexist, NORMAL_EXEC,
					     false, 0);
			FUNC3(btcoexist,
						      NORMAL_EXEC, 6);
			FUNC2(btcoexist, NORMAL_EXEC, 0);

			FUNC6(btcoexist, true, false,
						   false, false);
			FUNC7(btcoexist, false, false,
						   false, 0x18);

			common = true;
		} else {
			low_pwr_disable = true;
			btcoexist->btc_set(btcoexist,
					   BTC_SET_ACT_DISABLE_LOW_POWER,
					   &low_pwr_disable);

			if (wifi_busy) {
				FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
					 "Wifi Connected-Busy + BT Busy!!\n");
				common = false;
			} else {
				FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
					 "Wifi Connected-Idle + BT Busy!!\n");

				FUNC8(btcoexist,
							    NORMAL_EXEC, 1);
				FUNC1(btcoexist,
								  NORMAL_EXEC,
								  2);
				FUNC5(btcoexist, NORMAL_EXEC,
						     true, 21);
				FUNC3(btcoexist,
							      NORMAL_EXEC, 6);
				FUNC2(btcoexist,
							NORMAL_EXEC, 0);
				FUNC6(btcoexist, false,
							   false, false, false);
				FUNC7(btcoexist, false,
							   false, false, 0x18);
				common = true;
			}
		}
	}
	return common;
}