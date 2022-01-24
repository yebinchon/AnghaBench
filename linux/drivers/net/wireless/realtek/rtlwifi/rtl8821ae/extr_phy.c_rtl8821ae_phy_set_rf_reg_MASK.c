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
struct rtl_priv {TYPE_1__ locks; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum radio_path { ____Placeholder_radio_path } radio_path ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_RF ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int RFREG_OFFSET_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct ieee80211_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int,int,int) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(struct ieee80211_hw *hw,
			   enum radio_path rfpath,
			   u32 regaddr, u32 bitmask, u32 data)
{
	struct rtl_priv *rtlpriv = FUNC4(hw);
	u32 original_value, bitshift;
	unsigned long flags;

	FUNC0(rtlpriv, COMP_RF, DBG_TRACE,
		 "regaddr(%#x), bitmask(%#x), data(%#x), rfpath(%#x)\n",
		  regaddr, bitmask, data, rfpath);

	FUNC5(&rtlpriv->locks.rf_lock, flags);

	if (bitmask != RFREG_OFFSET_MASK) {
		original_value =
		   FUNC2(hw, rfpath, regaddr);
		bitshift = FUNC1(bitmask);
		data = ((original_value & (~bitmask)) | (data << bitshift));
	}

	FUNC3(hw, rfpath, regaddr, data);

	FUNC6(&rtlpriv->locks.rf_lock, flags);

	FUNC0(rtlpriv, COMP_RF, DBG_TRACE,
		 "regaddr(%#x), bitmask(%#x), data(%#x), rfpath(%#x)\n",
		 regaddr, bitmask, data, rfpath);
}