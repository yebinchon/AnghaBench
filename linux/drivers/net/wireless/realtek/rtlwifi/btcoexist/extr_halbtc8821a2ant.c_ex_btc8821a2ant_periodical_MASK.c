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
struct rtl_priv {int dummy; } ;
struct btc_coexist {scalar_t__ auto_report_2ant; struct rtl_priv* adapter; } ;
struct TYPE_4__ {scalar_t__ auto_tdma_adjust; } ;
struct TYPE_3__ {int dis_ver_info_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_ANT_WIFI_AT_MAIN ; 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 TYPE_2__* coex_dm ; 
 TYPE_1__* coex_sta ; 

void FUNC7(struct btc_coexist *btcoexist)
{
	struct rtl_priv *rtlpriv = btcoexist->adapter;

	FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
		 "[BTCoex], ==========================Periodical===========================\n");

	if (coex_sta->dis_ver_info_cnt <= 5) {
		coex_sta->dis_ver_info_cnt += 1;
		if (coex_sta->dis_ver_info_cnt == 3) {
			/* Antenna config to set 0x765 = 0x0 (GNT_BT control by
			 * PTA) after initial
			 */
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
				 "[BTCoex], Set GNT_BT control by PTA\n");
			FUNC6(btcoexist,
					BTC_ANT_WIFI_AT_MAIN, false, false);
		}
	}

	if (btcoexist->auto_report_2ant) {
		FUNC4(btcoexist);
	} else {
		FUNC2(btcoexist);
		FUNC3(btcoexist);

		if (FUNC1(btcoexist) ||
		    coex_dm->auto_tdma_adjust)
			FUNC5(btcoexist);
	}
}