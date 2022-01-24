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
struct rtl_priv {int dummy; } ;
struct btc_coexist {scalar_t__ manual_control; struct rtl_priv* adapter; } ;
struct TYPE_4__ {int cur_algorithm; int auto_tdma_adjust; int pre_algorithm; } ;
struct TYPE_3__ {scalar_t__ c2h_bt_inquiry_page; scalar_t__ under_ips; } ;

/* Variables and functions */
#define  BT_8192E_2ANT_COEX_ALGO_A2DP 138 
#define  BT_8192E_2ANT_COEX_ALGO_A2DP_PANHS 137 
#define  BT_8192E_2ANT_COEX_ALGO_HID 136 
#define  BT_8192E_2ANT_COEX_ALGO_HID_A2DP 135 
#define  BT_8192E_2ANT_COEX_ALGO_HID_A2DP_PANEDR 134 
#define  BT_8192E_2ANT_COEX_ALGO_PANEDR 133 
#define  BT_8192E_2ANT_COEX_ALGO_PANEDR_A2DP 132 
#define  BT_8192E_2ANT_COEX_ALGO_PANEDR_HID 131 
#define  BT_8192E_2ANT_COEX_ALGO_PANHS 130 
#define  BT_8192E_2ANT_COEX_ALGO_SCO 129 
#define  BT_8192E_2ANT_COEX_ALGO_SCO_PAN 128 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
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
 scalar_t__ FUNC14 (struct btc_coexist*) ; 
 TYPE_2__* coex_dm ; 
 TYPE_1__* coex_sta ; 

__attribute__((used)) static void FUNC15(struct btc_coexist *btcoexist)
{
	struct rtl_priv *rtlpriv = btcoexist->adapter;
	u8 algorithm = 0;

	FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
		 "[BTCoex], RunCoexistMechanism()===>\n");

	if (btcoexist->manual_control) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], return for Manual CTRL <===\n");
		return;
	}

	if (coex_sta->under_ips) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], wifi is under IPS !!!\n");
		return;
	}

	algorithm = FUNC3(btcoexist);
	if (coex_sta->c2h_bt_inquiry_page &&
	    (BT_8192E_2ANT_COEX_ALGO_PANHS != algorithm)) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], BT is under inquiry/page scan !!\n");
		FUNC4(btcoexist);
		return;
	}

	coex_dm->cur_algorithm = algorithm;
	FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
		 "[BTCoex], Algorithm = %d\n", coex_dm->cur_algorithm);

	if (FUNC14(btcoexist)) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], Action 2-Ant common\n");
		coex_dm->auto_tdma_adjust = false;
	} else {
		if (coex_dm->cur_algorithm != coex_dm->pre_algorithm) {
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex] preAlgorithm=%d, curAlgorithm=%d\n",
				 coex_dm->pre_algorithm,
				 coex_dm->cur_algorithm);
			coex_dm->auto_tdma_adjust = false;
		}
		switch (coex_dm->cur_algorithm) {
		case BT_8192E_2ANT_COEX_ALGO_SCO:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "Action 2-Ant, algorithm = SCO\n");
			FUNC12(btcoexist);
			break;
		case BT_8192E_2ANT_COEX_ALGO_SCO_PAN:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "Action 2-Ant, algorithm = SCO+PAN(EDR)\n");
			FUNC13(btcoexist);
			break;
		case BT_8192E_2ANT_COEX_ALGO_HID:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "Action 2-Ant, algorithm = HID\n");
			FUNC5(btcoexist);
			break;
		case BT_8192E_2ANT_COEX_ALGO_A2DP:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "Action 2-Ant, algorithm = A2DP\n");
			FUNC1(btcoexist);
			break;
		case BT_8192E_2ANT_COEX_ALGO_A2DP_PANHS:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "Action 2-Ant, algorithm = A2DP+PAN(HS)\n");
			FUNC2(btcoexist);
			break;
		case BT_8192E_2ANT_COEX_ALGO_PANEDR:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "Action 2-Ant, algorithm = PAN(EDR)\n");
			FUNC8(btcoexist);
			break;
		case BT_8192E_2ANT_COEX_ALGO_PANHS:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "Action 2-Ant, algorithm = HS mode\n");
			FUNC11(btcoexist);
			break;
		case BT_8192E_2ANT_COEX_ALGO_PANEDR_A2DP:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "Action 2-Ant, algorithm = PAN+A2DP\n");
			FUNC9(btcoexist);
			break;
		case BT_8192E_2ANT_COEX_ALGO_PANEDR_HID:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "Action 2-Ant, algorithm = PAN(EDR)+HID\n");
			FUNC10(btcoexist);
			break;
		case BT_8192E_2ANT_COEX_ALGO_HID_A2DP_PANEDR:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "Action 2-Ant, algorithm = HID+A2DP+PAN\n");
			FUNC7(btcoexist);
			break;
		case BT_8192E_2ANT_COEX_ALGO_HID_A2DP:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "Action 2-Ant, algorithm = HID+A2DP\n");
			FUNC6(btcoexist);
			break;
		default:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "Action 2-Ant, algorithm = unknown!!\n");
			/* btc8192e2ant_coex_all_off(btcoexist); */
			break;
		}
		coex_dm->pre_algorithm = coex_dm->cur_algorithm;
	}
}