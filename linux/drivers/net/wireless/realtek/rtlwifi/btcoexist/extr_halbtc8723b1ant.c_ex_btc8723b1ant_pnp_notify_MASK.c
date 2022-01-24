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
struct btc_coexist {int stop_coex_dm; struct rtl_priv* adapter; } ;
struct TYPE_2__ {int under_ips; int under_lps; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_ANT_PATH_BT ; 
 int /*<<< orphan*/  BTC_PS_WIFI_NATIVE ; 
 scalar_t__ BTC_WIFI_PNP_SLEEP ; 
 scalar_t__ BTC_WIFI_PNP_WAKE_UP ; 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  FORCE_EXEC ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* coex_sta ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

void FUNC8(struct btc_coexist *btcoexist, u8 pnp_state)
{
	struct rtl_priv *rtlpriv = btcoexist->adapter;

	FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD, "[BTCoex], Pnp notify\n");

	if (BTC_WIFI_PNP_SLEEP == pnp_state) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], Pnp notify to SLEEP\n");
		FUNC7(btcoexist, BTC_ANT_PATH_BT,
					     FORCE_EXEC, false, true);
		FUNC4(btcoexist, BTC_PS_WIFI_NATIVE,
						 0x0, 0x0);
		FUNC5(btcoexist, NORMAL_EXEC, false, 0);
		FUNC1(btcoexist, NORMAL_EXEC, 2);

		/* Driver do not leave IPS/LPS when driver is going to sleep, so
		 * BTCoexistence think wifi is still under IPS/LPS
		 *
		 * BT should clear UnderIPS/UnderLPS state to avoid mismatch
		 * state after wakeup.
		 */
		coex_sta->under_ips = false;
		coex_sta->under_lps = false;
		btcoexist->stop_coex_dm = true;
	} else if (BTC_WIFI_PNP_WAKE_UP == pnp_state) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], Pnp notify to WAKE UP\n");
		btcoexist->stop_coex_dm = false;
		FUNC3(btcoexist, false, false);
		FUNC2(btcoexist);
		FUNC6(btcoexist);
	}
}