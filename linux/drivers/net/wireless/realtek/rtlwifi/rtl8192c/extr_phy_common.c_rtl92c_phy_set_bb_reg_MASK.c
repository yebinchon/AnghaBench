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
typedef  int u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_RF ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int MASKDWORD ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC1 (int) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int FUNC3 (struct rtl_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,int,int) ; 

void FUNC5(struct ieee80211_hw *hw,
			   u32 regaddr, u32 bitmask, u32 data)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	u32 originalvalue, bitshift;

	FUNC0(rtlpriv, COMP_RF, DBG_TRACE,
		 "regaddr(%#x), bitmask(%#x), data(%#x)\n",
		 regaddr, bitmask, data);

	if (bitmask != MASKDWORD) {
		originalvalue = FUNC3(rtlpriv, regaddr);
		bitshift = FUNC1(bitmask);
		data = ((originalvalue & (~bitmask)) | (data << bitshift));
	}

	FUNC4(rtlpriv, regaddr, data);

	FUNC0(rtlpriv, COMP_RF, DBG_TRACE,
		 "regaddr(%#x), bitmask(%#x), data(%#x)\n",
		 regaddr, bitmask, data);
}