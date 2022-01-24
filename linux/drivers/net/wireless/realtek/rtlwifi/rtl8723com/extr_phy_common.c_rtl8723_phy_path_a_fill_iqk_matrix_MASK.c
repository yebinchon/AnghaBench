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
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  MASKDWORD ; 
 int ROFDM0_ECCATHRESHOLD ; 
 int ROFDM0_XARXIQIMBALANCE ; 
 int ROFDM0_XATXIQIMBALANCE ; 
 int ROFDM0_XCTXAFE ; 
 int FUNC1 (struct ieee80211_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int,int,int) ; 

void FUNC3(struct ieee80211_hw *hw,
					bool iqk_ok,
					long result[][8],
					u8 final_candidate,
					bool btxonly)
{
	u32 oldval_0, x, tx0_a, reg;
	long y, tx0_c;

	if (final_candidate == 0xFF) {
		return;
	} else if (iqk_ok) {
		oldval_0 = (FUNC1(hw, ROFDM0_XATXIQIMBALANCE,
					  MASKDWORD) >> 22) & 0x3FF;
		x = result[final_candidate][0];
		if ((x & 0x00000200) != 0)
			x = x | 0xFFFFFC00;
		tx0_a = (x * oldval_0) >> 8;
		FUNC2(hw, ROFDM0_XATXIQIMBALANCE, 0x3FF, tx0_a);
		FUNC2(hw, ROFDM0_ECCATHRESHOLD, FUNC0(31),
			      ((x * oldval_0 >> 7) & 0x1));
		y = result[final_candidate][1];
		if ((y & 0x00000200) != 0)
			y = y | 0xFFFFFC00;
		tx0_c = (y * oldval_0) >> 8;
		FUNC2(hw, ROFDM0_XCTXAFE, 0xF0000000,
			      ((tx0_c & 0x3C0) >> 6));
		FUNC2(hw, ROFDM0_XATXIQIMBALANCE, 0x003F0000,
			      (tx0_c & 0x3F));
		FUNC2(hw, ROFDM0_ECCATHRESHOLD, FUNC0(29),
			      ((y * oldval_0 >> 7) & 0x1));
		if (btxonly)
			return;
		reg = result[final_candidate][2];
		FUNC2(hw, ROFDM0_XARXIQIMBALANCE, 0x3FF, reg);
		reg = result[final_candidate][3] & 0x3F;
		FUNC2(hw, ROFDM0_XARXIQIMBALANCE, 0xFC00, reg);
		reg = (result[final_candidate][3] >> 6) & 0xF;
		FUNC2(hw, 0xca0, 0xF0000000, reg);
	}
}