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
typedef  scalar_t__ u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {scalar_t__ stop_coex_dm; scalar_t__ manual_control; struct rtl_priv* adapter; } ;
struct TYPE_2__ {int under_ips; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_ANT_PATH_BT ; 
 scalar_t__ BTC_IPS_ENTER ; 
 scalar_t__ BTC_IPS_LEAVE ; 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  FORCE_EXEC ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* coex_sta ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

void FUNC7(struct btc_coexist *btcoexist, u8 type)
{
	struct rtl_priv *rtlpriv = btcoexist->adapter;

	if (btcoexist->manual_control || btcoexist->stop_coex_dm)
		return;

	if (BTC_IPS_ENTER == type) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], IPS ENTER notify\n");
		coex_sta->under_ips = true;

		FUNC6(btcoexist, BTC_ANT_PATH_BT,
					     FORCE_EXEC, false, true);
		/* set PTA control */
		FUNC4(btcoexist, NORMAL_EXEC, false, 0);
		FUNC1(btcoexist,
						     NORMAL_EXEC, 0);
	} else if (BTC_IPS_LEAVE == type) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], IPS LEAVE notify\n");
		coex_sta->under_ips = false;

		FUNC3(btcoexist, false, false);
		FUNC2(btcoexist);
		FUNC5(btcoexist);
	}
}