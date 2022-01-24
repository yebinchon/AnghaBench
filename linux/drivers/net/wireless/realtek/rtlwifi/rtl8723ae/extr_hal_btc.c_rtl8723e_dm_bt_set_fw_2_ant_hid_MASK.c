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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int fw_coexist_all_off; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int,int,int /*<<< orphan*/ *) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw,
					    bool b_enable, bool b_dac_swing_on)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	u8 h2c_parameter[1] = {0};

	if (b_enable) {
		h2c_parameter[0] |= FUNC0(0);
		rtlpriv->btcoexist.fw_coexist_all_off = false;
	}
	if (b_dac_swing_on)
		h2c_parameter[0] |= FUNC0(1); /* Dac Swing default enable */

	FUNC1(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
		 "[BTCoex], turn 2-Ant+HID mode %s, DACSwing:%s, write 0x15=0x%x\n",
		 (b_enable ? "ON!!" : "OFF!!"), (b_dac_swing_on ? "ON" : "OFF"),
		 h2c_parameter[0]);

	FUNC2(hw, 0x15, 1, h2c_parameter);
}