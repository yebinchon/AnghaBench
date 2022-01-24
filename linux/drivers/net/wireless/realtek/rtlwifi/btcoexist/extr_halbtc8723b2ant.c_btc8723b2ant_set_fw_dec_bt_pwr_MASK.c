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
typedef  int /*<<< orphan*/  u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int /*<<< orphan*/  (* btc_fill_h2c ) (struct btc_coexist*,int,int,int /*<<< orphan*/ *) ;struct rtl_priv* adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct btc_coexist *btcoexist,
					   u8 dec_bt_pwr_lvl)
{
	struct rtl_priv *rtlpriv = btcoexist->adapter;
	u8 h2c_parameter[1] = {0};

	h2c_parameter[0] = dec_bt_pwr_lvl;

	FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
		 "[BTCoex], decrease Bt Power Level : %u\n", dec_bt_pwr_lvl);

	btcoexist->btc_fill_h2c(btcoexist, 0x62, 1, h2c_parameter);
}