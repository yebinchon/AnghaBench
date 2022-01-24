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
struct TYPE_4__ {int btdm_ant_num; } ;
struct TYPE_3__ {int /*<<< orphan*/  cnt_coex_dm_switch; } ;
struct btc_coexist {int stop_coex_dm; TYPE_2__ board_info; struct rtl_priv* adapter; TYPE_1__ statistics; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_COEX_ANT_TYPE_DETECTED ; 
 scalar_t__ FUNC0 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*) ; 

void FUNC8(struct btc_coexist *btcoexist)
{
	struct rtl_priv *rtlpriv = btcoexist->adapter;

	if (!FUNC5(btcoexist))
		return;
	btcoexist->statistics.cnt_coex_dm_switch++;

	FUNC6(btcoexist);

	if (FUNC0(btcoexist->adapter)) {
		if (btcoexist->board_info.btdm_ant_num == 1) {
			btcoexist->stop_coex_dm = true;
			FUNC1(btcoexist);
			FUNC4(rtlpriv,
					     BT_COEX_ANT_TYPE_DETECTED, 2);
			FUNC3(btcoexist);
			FUNC2(btcoexist);
			btcoexist->stop_coex_dm = false;
		}
	}

	FUNC7(btcoexist);
}