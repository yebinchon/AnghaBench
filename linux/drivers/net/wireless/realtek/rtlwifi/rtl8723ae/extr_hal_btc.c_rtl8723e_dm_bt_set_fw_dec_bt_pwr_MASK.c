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
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int,int,int /*<<< orphan*/ *) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC4(
		struct ieee80211_hw *hw, bool dec_bt_pwr)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	u8 h2c_parameter[1] = {0};

	h2c_parameter[0] = 0;

	if (dec_bt_pwr) {
		h2c_parameter[0] |= FUNC0(1);
		rtlpriv->btcoexist.fw_coexist_all_off = false;
	}

	FUNC1(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
		 "[BTCoex], decrease Bt Power : %s, write 0x21=0x%x\n",
		 (dec_bt_pwr ? "Yes!!" : "No!!"), h2c_parameter[0]);

	FUNC2(hw, 0x21, 1, h2c_parameter);
}