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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  rf_lock; } ;
struct rtl_phy {scalar_t__ rf_mode; } ;
struct rtl_priv {TYPE_1__ locks; struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum radio_path { ____Placeholder_radio_path } radio_path ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_RF ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 scalar_t__ RF_OP_BY_FW ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int,...) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct ieee80211_hw*,int,int) ; 
 int FUNC3 (struct ieee80211_hw*,int,int) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

u32 FUNC7(struct ieee80211_hw *hw,
			    enum radio_path rfpath, u32 regaddr, u32 bitmask)
{
	struct rtl_priv *rtlpriv = FUNC4(hw);
	u32 original_value, readback_value, bitshift;
	struct rtl_phy *rtlphy = &(rtlpriv->phy);

	FUNC0(rtlpriv, COMP_RF, DBG_TRACE,
		 "regaddr(%#x), rfpath(%#x), bitmask(%#x)\n",
		 regaddr, rfpath, bitmask);

	FUNC5(&rtlpriv->locks.rf_lock);

	if (rtlphy->rf_mode != RF_OP_BY_FW) {
		original_value = FUNC3(hw,
							    rfpath, regaddr);
	} else {
		original_value = FUNC2(hw,
							       rfpath, regaddr);
	}

	bitshift = FUNC1(bitmask);
	readback_value = (original_value & bitmask) >> bitshift;

	FUNC6(&rtlpriv->locks.rf_lock);

	FUNC0(rtlpriv, COMP_RF, DBG_TRACE,
		 "regaddr(%#x), rfpath(%#x), bitmask(%#x), original_value(%#x)\n",
		 regaddr, rfpath, bitmask, original_value);

	return readback_value;
}