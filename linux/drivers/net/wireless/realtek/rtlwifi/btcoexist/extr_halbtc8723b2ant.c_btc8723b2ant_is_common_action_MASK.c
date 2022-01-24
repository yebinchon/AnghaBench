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
struct btc_coexist {int /*<<< orphan*/  (* btc_set ) (struct btc_coexist*,int /*<<< orphan*/ ,int*) ;int /*<<< orphan*/  (* btc_set_rf_reg ) (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int) ;int /*<<< orphan*/  (* btc_get ) (struct btc_coexist*,int /*<<< orphan*/ ,int*) ;struct rtl_priv* adapter; } ;
struct TYPE_2__ {scalar_t__ bt_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_GET_BL_HS_OPERATION ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_BUSY ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_CONNECTED ; 
 int /*<<< orphan*/  BTC_RF_A ; 
 int /*<<< orphan*/  BTC_SET_ACT_DISABLE_LOW_POWER ; 
 scalar_t__ BT_8723B_2ANT_BT_STATUS_CONNECTED_IDLE ; 
 scalar_t__ BT_8723B_2ANT_BT_STATUS_NON_CONNECTED_IDLE ; 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*,int,int,int,int) ; 
 TYPE_1__* coex_dm ; 
 int /*<<< orphan*/  FUNC8 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC15 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC17 (struct btc_coexist*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static bool FUNC18(struct btc_coexist *btcoexist)
{
	struct rtl_priv *rtlpriv = btcoexist->adapter;
	bool common = false, wifi_connected = false;
	bool wifi_busy = false;
	bool bt_hs_on = false, low_pwr_disable = false;

	btcoexist->btc_get(btcoexist, BTC_GET_BL_HS_OPERATION, &bt_hs_on);
	btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_CONNECTED,
			   &wifi_connected);
	btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_BUSY, &wifi_busy);

	if (!wifi_connected) {
		low_pwr_disable = false;
		btcoexist->btc_set(btcoexist, BTC_SET_ACT_DISABLE_LOW_POWER,
				   &low_pwr_disable);
		FUNC5(btcoexist, NORMAL_EXEC,
					false, false, 0x8);

		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], Wifi non-connected idle!!\n");

		btcoexist->btc_set_rf_reg(btcoexist, BTC_RF_A, 0x1, 0xfffff,
					  0x0);
		FUNC2(btcoexist, NORMAL_EXEC, 0);
		FUNC6(btcoexist, NORMAL_EXEC, false, 1);
		FUNC4(btcoexist, NORMAL_EXEC, 6);
		FUNC3(btcoexist, NORMAL_EXEC, 0);

		FUNC7(btcoexist, false, false, false,
					  false);

		common = true;
	} else {
		if (BT_8723B_2ANT_BT_STATUS_NON_CONNECTED_IDLE ==
		    coex_dm->bt_status) {
			low_pwr_disable = false;
			btcoexist->btc_set(btcoexist,
					   BTC_SET_ACT_DISABLE_LOW_POWER,
					   &low_pwr_disable);
			FUNC5(btcoexist, NORMAL_EXEC,
						false, false, 0x8);

			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], Wifi connected + BT non connected-idle!!\n");

			btcoexist->btc_set_rf_reg(btcoexist, BTC_RF_A, 0x1,
						  0xfffff, 0x0);
			FUNC2(btcoexist,
							  NORMAL_EXEC, 0);
			FUNC6(btcoexist, NORMAL_EXEC, false, 1);
			FUNC4(btcoexist, NORMAL_EXEC,
						      0xb);
			FUNC3(btcoexist, NORMAL_EXEC, 0);

			FUNC7(btcoexist, false, false,
						  false, false);

			common = true;
		} else if (BT_8723B_2ANT_BT_STATUS_CONNECTED_IDLE ==
			   coex_dm->bt_status) {
			low_pwr_disable = true;
			btcoexist->btc_set(btcoexist,
					   BTC_SET_ACT_DISABLE_LOW_POWER,
					   &low_pwr_disable);

			if (bt_hs_on)
				return false;
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], Wifi connected + BT connected-idle!!\n");
			FUNC5(btcoexist, NORMAL_EXEC,
						false, false, 0x8);

			btcoexist->btc_set_rf_reg(btcoexist, BTC_RF_A, 0x1,
						  0xfffff, 0x0);
			FUNC2(btcoexist,
							  NORMAL_EXEC, 0);
			FUNC6(btcoexist, NORMAL_EXEC, false, 1);
			FUNC4(btcoexist, NORMAL_EXEC,
						      0xb);
			FUNC3(btcoexist, NORMAL_EXEC, 0);

			FUNC7(btcoexist, true, false,
						  false, false);

			common = true;
		} else {
			low_pwr_disable = true;
			btcoexist->btc_set(btcoexist,
					   BTC_SET_ACT_DISABLE_LOW_POWER,
					   &low_pwr_disable);

			if (wifi_busy) {
				FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
					 "[BTCoex], Wifi Connected-Busy + BT Busy!!\n");
				common = false;
			} else {
				FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
					 "[BTCoex], Wifi Connected-Idle + BT Busy!!\n");

				common =
				    FUNC1(
						btcoexist);
			}
		}
	}

	return common;
}