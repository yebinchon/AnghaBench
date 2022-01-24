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
struct btc_bt_link_info {scalar_t__ bt_link_exist; } ;
struct btc_coexist {int /*<<< orphan*/  (* btc_set ) (struct btc_coexist*,int /*<<< orphan*/ ,int*) ;int /*<<< orphan*/  (* btc_get ) (struct btc_coexist*,int /*<<< orphan*/ ,int*) ;scalar_t__ manual_control; struct btc_bt_link_info bt_link_info; struct rtl_priv* adapter; } ;
struct TYPE_4__ {int cur_algorithm; int auto_tdma_adjust; int pre_algorithm; } ;
struct TYPE_3__ {scalar_t__ c2h_bt_inquiry_page; scalar_t__ under_ips; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_GET_BL_WIFI_LINK ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_ROAM ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_SCAN ; 
 int /*<<< orphan*/  BTC_GET_U4_WIFI_LINK_STATUS ; 
 int /*<<< orphan*/  BTC_SET_BL_MIRACAST_PLUS_BT ; 
#define  BT_8723B_2ANT_COEX_ALGO_A2DP 137 
#define  BT_8723B_2ANT_COEX_ALGO_A2DP_PANHS 136 
#define  BT_8723B_2ANT_COEX_ALGO_HID 135 
#define  BT_8723B_2ANT_COEX_ALGO_HID_A2DP 134 
#define  BT_8723B_2ANT_COEX_ALGO_HID_A2DP_PANEDR 133 
#define  BT_8723B_2ANT_COEX_ALGO_PANEDR 132 
#define  BT_8723B_2ANT_COEX_ALGO_PANEDR_A2DP 131 
#define  BT_8723B_2ANT_COEX_ALGO_PANEDR_HID 130 
#define  BT_8723B_2ANT_COEX_ALGO_PANHS 129 
#define  BT_8723B_2ANT_COEX_ALGO_SCO 128 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int WIFI_P2P_GO_CONNECTED ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*) ; 
 scalar_t__ FUNC3 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC8 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC9 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC10 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC11 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC12 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC13 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC14 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC15 (struct btc_coexist*) ; 
 scalar_t__ FUNC16 (struct btc_coexist*) ; 
 TYPE_2__* coex_dm ; 
 TYPE_1__* coex_sta ; 
 int /*<<< orphan*/  FUNC17 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC18 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC19 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC20 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC21 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC22 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC23(struct btc_coexist *btcoexist)
{
	struct rtl_priv *rtlpriv = btcoexist->adapter;
	u8 algorithm = 0;
	u32 num_of_wifi_link = 0;
	u32 wifi_link_status = 0;
	struct btc_bt_link_info *bt_link_info = &btcoexist->bt_link_info;
	bool miracast_plus_bt = false;
	bool scan = false, link = false, roam = false;

	FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
		 "[BTCoex], RunCoexistMechanism()===>\n");

	if (btcoexist->manual_control) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], RunCoexistMechanism(), return for Manual CTRL <===\n");
		return;
	}

	if (coex_sta->under_ips) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], wifi is under IPS !!!\n");
		return;
	}

	algorithm = FUNC3(btcoexist);
	if (coex_sta->c2h_bt_inquiry_page &&
	    (BT_8723B_2ANT_COEX_ALGO_PANHS != algorithm)) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], BT is under inquiry/page scan !!\n");
		FUNC4(btcoexist);
		return;
	}

	btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_SCAN, &scan);
	btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_LINK, &link);
	btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_ROAM, &roam);

	if (scan || link || roam) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], WiFi is under Link Process !!\n");
		FUNC13(btcoexist);
		return;
	}

	/* for P2P */
	btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_LINK_STATUS,
			   &wifi_link_status);
	num_of_wifi_link = wifi_link_status >> 16;

	if ((num_of_wifi_link >= 2) ||
	    (wifi_link_status & WIFI_P2P_GO_CONNECTED)) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "############# [BTCoex],  Multi-Port num_of_wifi_link = %d, wifi_link_status = 0x%x\n",
			 num_of_wifi_link, wifi_link_status);

		if (bt_link_info->bt_link_exist)
			miracast_plus_bt = true;
		else
			miracast_plus_bt = false;

		btcoexist->btc_set(btcoexist, BTC_SET_BL_MIRACAST_PLUS_BT,
				   &miracast_plus_bt);
		FUNC14(btcoexist);

		return;
	}

	miracast_plus_bt = false;
	btcoexist->btc_set(btcoexist, BTC_SET_BL_MIRACAST_PLUS_BT,
			   &miracast_plus_bt);

	coex_dm->cur_algorithm = algorithm;
	FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
		 "[BTCoex], Algorithm = %d\n",
		 coex_dm->cur_algorithm);

	if (FUNC16(btcoexist)) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], Action 2-Ant common\n");
		coex_dm->auto_tdma_adjust = false;
	} else {
		if (coex_dm->cur_algorithm != coex_dm->pre_algorithm) {
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], preAlgorithm=%d, curAlgorithm=%d\n",
				 coex_dm->pre_algorithm,
				 coex_dm->cur_algorithm);
			coex_dm->auto_tdma_adjust = false;
		}
		switch (coex_dm->cur_algorithm) {
		case BT_8723B_2ANT_COEX_ALGO_SCO:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], Action 2-Ant, algorithm = SCO\n");
			FUNC12(btcoexist);
			break;
		case BT_8723B_2ANT_COEX_ALGO_HID:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], Action 2-Ant, algorithm = HID\n");
			FUNC5(btcoexist);
			break;
		case BT_8723B_2ANT_COEX_ALGO_A2DP:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], Action 2-Ant, algorithm = A2DP\n");
			FUNC1(btcoexist);
			break;
		case BT_8723B_2ANT_COEX_ALGO_A2DP_PANHS:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], Action 2-Ant, algorithm = A2DP+PAN(HS)\n");
			FUNC2(btcoexist);
			break;
		case BT_8723B_2ANT_COEX_ALGO_PANEDR:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], Action 2-Ant, algorithm = PAN(EDR)\n");
			FUNC8(btcoexist);
			break;
		case BT_8723B_2ANT_COEX_ALGO_PANHS:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], Action 2-Ant, algorithm = HS mode\n");
			FUNC11(btcoexist);
			break;
		case BT_8723B_2ANT_COEX_ALGO_PANEDR_A2DP:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], Action 2-Ant, algorithm = PAN+A2DP\n");
			FUNC9(btcoexist);
			break;
		case BT_8723B_2ANT_COEX_ALGO_PANEDR_HID:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], Action 2-Ant, algorithm = PAN(EDR)+HID\n");
			FUNC10(btcoexist);
			break;
		case BT_8723B_2ANT_COEX_ALGO_HID_A2DP_PANEDR:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], Action 2-Ant, algorithm = HID+A2DP+PAN\n");
			FUNC7(btcoexist);
			break;
		case BT_8723B_2ANT_COEX_ALGO_HID_A2DP:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], Action 2-Ant, algorithm = HID+A2DP\n");
			FUNC6(btcoexist);
			break;
		default:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], Action 2-Ant, algorithm = coexist All Off!!\n");
			FUNC15(btcoexist);
			break;
		}
		coex_dm->pre_algorithm = coex_dm->cur_algorithm;
	}
}