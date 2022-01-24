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
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int,int,int /*<<< orphan*/ *) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *hw,
					   u8 wlan_act_hi, u8 wlan_act_lo)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	u8 h2c_parameter_hi[1] = {0};
	u8 h2c_parameter_lo[1] = {0};
	h2c_parameter_hi[0] = wlan_act_hi;
	h2c_parameter_lo[0] = wlan_act_lo;

	FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
		"[BTCoex], Set WLAN_ACT Hi:Lo=0x%x/0x%x\n",
		wlan_act_hi, wlan_act_lo);
	FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
		"[BTCoex], write 0x22=0x%x\n", h2c_parameter_hi[0]);
	FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
		"[BTCoex], write 0x11=0x%x\n", h2c_parameter_lo[0]);

	/* WLAN_ACT = High duration, unit:ms */
	FUNC1(hw, 0x22, 1, h2c_parameter_hi);
	/*  WLAN_ACT = Low duration, unit:3*625us */
	FUNC1(hw, 0x11, 1, h2c_parameter_lo);
}