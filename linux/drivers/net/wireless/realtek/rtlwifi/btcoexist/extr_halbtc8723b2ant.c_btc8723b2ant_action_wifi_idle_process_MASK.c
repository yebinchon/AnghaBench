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
struct rtl_priv {int dummy; } ;
struct btc_coexist {int /*<<< orphan*/  (* btc_get ) (struct btc_coexist*,int /*<<< orphan*/ ,int*) ;struct rtl_priv* adapter; } ;
struct TYPE_4__ {int switch_thres_offset; } ;
struct TYPE_3__ {scalar_t__ a2dp_exist; scalar_t__ hid_exist; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_GET_U1_AP_NUM ; 
 int /*<<< orphan*/  BTC_PS_WIFI_NATIVE ; 
 scalar_t__ FUNC0 (int) ; 
 int BT_8723B_2ANT_BT_RSSI_COEXSWITCH_THRES ; 
 int BT_8723B_2ANT_WIFI_RSSI_COEXSWITCH_THRES ; 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct btc_coexist*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct btc_coexist*,int,int,int,int) ; 
 int FUNC9 (struct btc_coexist*,int,int,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* coex_dm ; 
 TYPE_1__* coex_sta ; 
 int /*<<< orphan*/  FUNC10 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static bool FUNC11(struct btc_coexist *btcoexist)
{
	struct rtl_priv *rtlpriv = btcoexist->adapter;
	u8 wifi_rssi_state, wifi_rssi_state1, bt_rssi_state;
	u8 ap_num = 0;
	u8 tmp = BT_8723B_2ANT_WIFI_RSSI_COEXSWITCH_THRES -
		 coex_dm->switch_thres_offset - coex_dm->switch_thres_offset;

	wifi_rssi_state = FUNC9(btcoexist, 0, 2, 15, 0);
	wifi_rssi_state1 = FUNC9(btcoexist, 1, 2,
							tmp, 0);
	tmp = BT_8723B_2ANT_BT_RSSI_COEXSWITCH_THRES -
	      coex_dm->switch_thres_offset - coex_dm->switch_thres_offset;
	bt_rssi_state = FUNC2(btcoexist, 2, tmp, 0);

	btcoexist->btc_get(btcoexist, BTC_GET_U1_AP_NUM, &ap_num);

	/* office environment */
	if (FUNC0(wifi_rssi_state1) && (coex_sta->hid_exist) &&
	    (coex_sta->a2dp_exist)) {
		FUNC1(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], Wifi  idle process for BT HID+A2DP exist!!\n");

		FUNC4(btcoexist, NORMAL_EXEC, true, 0x6);
		FUNC5(btcoexist, NORMAL_EXEC, 0);

		/* sw all off */
		FUNC8(btcoexist, false, false, false,
					  false);
		FUNC3(btcoexist, NORMAL_EXEC, 0);
		FUNC6(btcoexist, BTC_PS_WIFI_NATIVE,
					      0x0, 0x0);
		FUNC7(btcoexist, NORMAL_EXEC, false, 1);

		return true;
	}

	FUNC4(btcoexist, NORMAL_EXEC, true, 0x18);
	return false;
}