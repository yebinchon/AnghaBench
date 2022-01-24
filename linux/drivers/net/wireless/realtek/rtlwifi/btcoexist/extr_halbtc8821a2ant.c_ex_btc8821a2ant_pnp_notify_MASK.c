#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {struct rtl_priv* adapter; } ;

/* Variables and functions */
 scalar_t__ BTC_WIFI_PNP_SLEEP ; 
 scalar_t__ BTC_WIFI_PNP_WAKE_UP ; 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*) ; 

void FUNC4(struct btc_coexist *btcoexist, u8 pnp_state)
{
	struct rtl_priv *rtlpriv = btcoexist->adapter;

	FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD, "[BTCoex], Pnp notify\n");

	if (pnp_state == BTC_WIFI_PNP_SLEEP) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], Pnp notify to SLEEP\n");
	} else if (pnp_state == BTC_WIFI_PNP_WAKE_UP) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
			 "[BTCoex], Pnp notify to WAKE UP\n");
		FUNC3(btcoexist);
		FUNC1(btcoexist);
		FUNC2(btcoexist);
	}
}