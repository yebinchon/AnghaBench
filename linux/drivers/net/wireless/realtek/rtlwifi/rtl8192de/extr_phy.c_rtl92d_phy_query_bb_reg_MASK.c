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
typedef  int u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {scalar_t__ during_mac0init_radiob; scalar_t__ during_mac1init_radioa; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  COMP_RF ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,...) ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct ieee80211_hw*,int /*<<< orphan*/ ,int) ; 
 struct rtl_hal* FUNC4 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 
 int FUNC6 (struct rtl_priv*,int) ; 

u32 FUNC7(struct ieee80211_hw *hw, u32 regaddr, u32 bitmask)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);
	struct rtl_hal *rtlhal = FUNC4(rtlpriv);
	u32 returnvalue, originalvalue, bitshift;

	FUNC1(rtlpriv, COMP_RF, DBG_TRACE, "regaddr(%#x), bitmask(%#x)\n",
		 regaddr, bitmask);
	if (rtlhal->during_mac1init_radioa || rtlhal->during_mac0init_radiob) {
		u8 dbi_direct = 0;

		/* mac1 use phy0 read radio_b. */
		/* mac0 use phy1 read radio_b. */
		if (rtlhal->during_mac1init_radioa)
			dbi_direct = FUNC0(3);
		else if (rtlhal->during_mac0init_radiob)
			dbi_direct = FUNC0(3) | FUNC0(2);
		originalvalue = FUNC3(hw, (u16)regaddr,
			dbi_direct);
	} else {
		originalvalue = FUNC6(rtlpriv, regaddr);
	}
	bitshift = FUNC2(bitmask);
	returnvalue = (originalvalue & bitmask) >> bitshift;
	FUNC1(rtlpriv, COMP_RF, DBG_TRACE,
		 "BBR MASK=0x%x Addr[0x%x]=0x%x\n",
		 bitmask, regaddr, originalvalue);
	return returnvalue;
}