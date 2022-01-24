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
struct TYPE_2__ {int init_set; scalar_t__ lps_counter; scalar_t__ previous_state_h; scalar_t__ cstate_h; scalar_t__ previous_state; scalar_t__ cstate; void* bt_rfreg_origin_1f; void* bt_rfreg_origin_1e; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum radio_path { ____Placeholder_radio_path } radio_path ;

/* Variables and functions */
 int /*<<< orphan*/  RF_RCK1 ; 
 int /*<<< orphan*/  RF_RCK2 ; 
 void* FUNC0 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int,int) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);

	rtlpriv->btcoexist.bt_rfreg_origin_1e
		= FUNC0(hw, (enum radio_path)0, RF_RCK1, 0xfffff);
	rtlpriv->btcoexist.bt_rfreg_origin_1f
		= FUNC0(hw, (enum radio_path)0, RF_RCK2, 0xf0);

	rtlpriv->btcoexist.cstate = 0;
	rtlpriv->btcoexist.previous_state = 0;
	rtlpriv->btcoexist.cstate_h = 0;
	rtlpriv->btcoexist.previous_state_h = 0;
	rtlpriv->btcoexist.lps_counter = 0;

	/*  Enable counter statistics */
	FUNC2(rtlpriv, 0x76e, 0x4);
	FUNC2(rtlpriv, 0x778, 0x3);
	FUNC2(rtlpriv, 0x40, 0x20);

	rtlpriv->btcoexist.init_set = true;
}