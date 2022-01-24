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
 int MASKDWORD ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct ieee80211_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int) ; 
 struct rtl_hal* FUNC5 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC6 (struct ieee80211_hw*) ; 
 int FUNC7 (struct rtl_priv*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl_priv*,int,int) ; 

void FUNC9(struct ieee80211_hw *hw,
			   u32 regaddr, u32 bitmask, u32 data)
{
	struct rtl_priv *rtlpriv = FUNC6(hw);
	struct rtl_hal *rtlhal = FUNC5(rtlpriv);
	u8 dbi_direct = 0;
	u32 originalvalue, bitshift;

	FUNC1(rtlpriv, COMP_RF, DBG_TRACE,
		 "regaddr(%#x), bitmask(%#x), data(%#x)\n",
		 regaddr, bitmask, data);
	if (rtlhal->during_mac1init_radioa)
		dbi_direct = FUNC0(3);
	else if (rtlhal->during_mac0init_radiob)
		/* mac0 use phy1 write radio_b. */
		dbi_direct = FUNC0(3) | FUNC0(2);
	if (bitmask != MASKDWORD) {
		if (rtlhal->during_mac1init_radioa ||
		    rtlhal->during_mac0init_radiob)
			originalvalue = FUNC3(hw,
					(u16) regaddr,
					dbi_direct);
		else
			originalvalue = FUNC7(rtlpriv, regaddr);
		bitshift = FUNC2(bitmask);
		data = ((originalvalue & (~bitmask)) | (data << bitshift));
	}
	if (rtlhal->during_mac1init_radioa || rtlhal->during_mac0init_radiob)
		FUNC4(hw, (u16) regaddr, data, dbi_direct);
	else
		FUNC8(rtlpriv, regaddr, data);
	FUNC1(rtlpriv, COMP_RF, DBG_TRACE,
		 "regaddr(%#x), bitmask(%#x), data(%#x)\n",
		 regaddr, bitmask, data);
}