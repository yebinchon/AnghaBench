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
typedef  int u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ WFM3 ; 
 scalar_t__ WFM5 ; 
 int FUNC0 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,scalar_t__,int) ; 

void FUNC3(struct ieee80211_hw *hw, u16 beaconinterval)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	u32 new_bcn_num = 0;

	if (FUNC0(rtlpriv) >= 0x33) {
		/* Fw v.51 and later. */
		FUNC2(rtlpriv, WFM5, 0xF1000000 |
				(beaconinterval << 8));
	} else {
		new_bcn_num = beaconinterval * 32 - 64;
		FUNC2(rtlpriv, WFM3 + 4, new_bcn_num);
		FUNC2(rtlpriv, WFM3, 0xB026007C);
	}
}