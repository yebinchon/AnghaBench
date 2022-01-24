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
struct btc_bt_link_info {int hid_exist; } ;
struct btc_coexist {int /*<<< orphan*/  auto_report_1ant; struct btc_bt_link_info bt_link_info; struct rtl_priv* adapter; } ;
struct TYPE_4__ {scalar_t__ auto_tdma_adjust; } ;
struct TYPE_3__ {int high_priority_tx; int high_priority_rx; int /*<<< orphan*/  special_pkt_period_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct btc_coexist*) ; 
 TYPE_2__* coex_dm ; 
 TYPE_1__* coex_sta ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*) ; 

void FUNC7(struct btc_coexist *btcoexist)
{
	struct rtl_priv *rtlpriv = btcoexist->adapter;
	struct btc_bt_link_info *bt_link_info = &btcoexist->bt_link_info;

	FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
		 "[BTCoex], ==========================Periodical===========================\n");

	if (!btcoexist->auto_report_1ant) {
		FUNC5(btcoexist);
		FUNC3(btcoexist);
	} else {
		FUNC2(btcoexist);
		FUNC4(btcoexist);

		if ((coex_sta->high_priority_tx + coex_sta->high_priority_rx < 50) &&
		    bt_link_info->hid_exist)
			bt_link_info->hid_exist = false;

		if (FUNC1(btcoexist) ||
		    coex_dm->auto_tdma_adjust) {
			FUNC6(btcoexist);
		}
		coex_sta->special_pkt_period_cnt++;
	}
}