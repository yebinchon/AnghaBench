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
struct TYPE_2__ {int sw_coexist_all_off; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ BT_BB_BACKOFF_OFF ; 
 scalar_t__ BT_BB_BACKOFF_ON ; 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int,int) ; 

void FUNC3(struct ieee80211_hw *hw, u8 type)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);

	if (type == BT_BB_BACKOFF_OFF) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
			 "[BT]BBBackOffLevel Off!\n");
		FUNC2(rtlpriv, 0xc04, 0x3a05611);
	} else if (type == BT_BB_BACKOFF_ON) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
			 "[BT]BBBackOffLevel On!\n");
		FUNC2(rtlpriv, 0xc04, 0x3a07611);
		rtlpriv->btcoexist.sw_coexist_all_off = false;
	}
}