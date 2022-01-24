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
 scalar_t__ BT_AGCTABLE_OFF ; 
 scalar_t__ BT_AGCTABLE_ON ; 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  RF90_PATH_A ; 
 int /*<<< orphan*/  RF_RX_AGC_HP ; 
 int /*<<< orphan*/  RF_RX_G1 ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int,int) ; 

void FUNC4(struct ieee80211_hw *hw, u8 type)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);

	if (type == BT_AGCTABLE_OFF) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
			 "[BT]AGCTable Off!\n");
		FUNC3(rtlpriv, 0xc78, 0x641c0001);
		FUNC3(rtlpriv, 0xc78, 0x631d0001);
		FUNC3(rtlpriv, 0xc78, 0x621e0001);
		FUNC3(rtlpriv, 0xc78, 0x611f0001);
		FUNC3(rtlpriv, 0xc78, 0x60200001);

		FUNC1(hw, RF90_PATH_A,
					RF_RX_AGC_HP, 0xfffff, 0x32000);
		FUNC1(hw, RF90_PATH_A,
					RF_RX_AGC_HP, 0xfffff, 0x71000);
		FUNC1(hw, RF90_PATH_A,
					RF_RX_AGC_HP, 0xfffff, 0xb0000);
		FUNC1(hw, RF90_PATH_A,
					RF_RX_AGC_HP, 0xfffff, 0xfc000);
		FUNC1(hw, RF90_PATH_A,
					RF_RX_G1, 0xfffff, 0x30355);
	} else if (type == BT_AGCTABLE_ON) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
			 "[BT]AGCTable On!\n");
		FUNC3(rtlpriv, 0xc78, 0x4e1c0001);
		FUNC3(rtlpriv, 0xc78, 0x4d1d0001);
		FUNC3(rtlpriv, 0xc78, 0x4c1e0001);
		FUNC3(rtlpriv, 0xc78, 0x4b1f0001);
		FUNC3(rtlpriv, 0xc78, 0x4a200001);

		FUNC1(hw, RF90_PATH_A,
					RF_RX_AGC_HP, 0xfffff, 0xdc000);
		FUNC1(hw, RF90_PATH_A,
					RF_RX_AGC_HP, 0xfffff, 0x90000);
		FUNC1(hw, RF90_PATH_A,
					RF_RX_AGC_HP, 0xfffff, 0x51000);
		FUNC1(hw, RF90_PATH_A,
					RF_RX_AGC_HP, 0xfffff, 0x12000);
		FUNC1(hw, RF90_PATH_A,
					RF_RX_G1, 0xfffff, 0x00355);

		rtlpriv->btcoexist.sw_coexist_all_off = false;
	}
}