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
typedef  int u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {struct rtl_priv* adapter; } ;
struct TYPE_2__ {int cur_algorithm; int pre_algorithm; } ;

/* Variables and functions */
#define  BT_8821A_1ANT_COEX_ALGO_A2DP 137 
#define  BT_8821A_1ANT_COEX_ALGO_A2DP_PANHS 136 
#define  BT_8821A_1ANT_COEX_ALGO_HID 135 
#define  BT_8821A_1ANT_COEX_ALGO_HID_A2DP 134 
#define  BT_8821A_1ANT_COEX_ALGO_HID_A2DP_PANEDR 133 
#define  BT_8821A_1ANT_COEX_ALGO_PANEDR 132 
#define  BT_8821A_1ANT_COEX_ALGO_PANEDR_A2DP 131 
#define  BT_8821A_1ANT_COEX_ALGO_PANEDR_HID 130 
#define  BT_8821A_1ANT_COEX_ALGO_PANHS 129 
#define  BT_8821A_1ANT_COEX_ALGO_SCO 128 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*) ; 
 int FUNC3 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC8 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC9 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC10 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC11 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC12 (struct btc_coexist*) ; 
 TYPE_1__* coex_dm ; 

__attribute__((used)) static void FUNC13(struct btc_coexist *btcoexist)
{
	struct rtl_priv *rtlpriv = btcoexist->adapter;
	u8 algorithm = 0;

	algorithm = FUNC3(btcoexist);
	coex_dm->cur_algorithm = algorithm;

	if (!FUNC12(btcoexist)) {
		switch (coex_dm->cur_algorithm) {
		case BT_8821A_1ANT_COEX_ALGO_SCO:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], Action algorithm = SCO\n");
			FUNC11(btcoexist);
			break;
		case BT_8821A_1ANT_COEX_ALGO_HID:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], Action algorithm = HID\n");
			FUNC4(btcoexist);
			break;
		case BT_8821A_1ANT_COEX_ALGO_A2DP:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], Action algorithm = A2DP\n");
			FUNC1(btcoexist);
			break;
		case BT_8821A_1ANT_COEX_ALGO_A2DP_PANHS:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], Action algorithm = A2DP+PAN(HS)\n");
			FUNC2(btcoexist);
			break;
		case BT_8821A_1ANT_COEX_ALGO_PANEDR:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], Action algorithm = PAN(EDR)\n");
			FUNC7(btcoexist);
			break;
		case BT_8821A_1ANT_COEX_ALGO_PANHS:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], Action algorithm = HS mode\n");
			FUNC10(btcoexist);
			break;
		case BT_8821A_1ANT_COEX_ALGO_PANEDR_A2DP:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], Action algorithm = PAN+A2DP\n");
			FUNC8(btcoexist);
			break;
		case BT_8821A_1ANT_COEX_ALGO_PANEDR_HID:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], Action algorithm = PAN(EDR)+HID\n");
			FUNC9(btcoexist);
			break;
		case BT_8821A_1ANT_COEX_ALGO_HID_A2DP_PANEDR:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], Action algorithm = HID+A2DP+PAN\n");
			FUNC6(btcoexist);
			break;
		case BT_8821A_1ANT_COEX_ALGO_HID_A2DP:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], Action algorithm = HID+A2DP\n");
			FUNC5(btcoexist);
			break;
		default:
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], Action algorithm = coexist All Off!!\n");
			/*btc8821a1ant_coex_all_off(btcoexist);*/
			break;
		}
		coex_dm->pre_algorithm = coex_dm->cur_algorithm;
	}
}