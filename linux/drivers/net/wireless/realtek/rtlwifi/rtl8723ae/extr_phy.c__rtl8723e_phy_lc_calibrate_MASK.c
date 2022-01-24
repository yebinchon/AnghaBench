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
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MASK12BITS ; 
 int REG_TXPAUSE ; 
 int /*<<< orphan*/  RF90_PATH_A ; 
 int /*<<< orphan*/  RF90_PATH_B ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int FUNC3 (struct rtl_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl_priv*,int,int) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *hw, bool is2t)
{
	u8 tmpreg;
	u32 rf_a_mode = 0, rf_b_mode = 0, lc_cal;
	struct rtl_priv *rtlpriv = FUNC2(hw);

	tmpreg = FUNC3(rtlpriv, 0xd03);

	if ((tmpreg & 0x70) != 0)
		FUNC5(rtlpriv, 0xd03, tmpreg & 0x8F);
	else
		FUNC5(rtlpriv, REG_TXPAUSE, 0xFF);

	if ((tmpreg & 0x70) != 0) {
		rf_a_mode = FUNC1(hw, RF90_PATH_A, 0x00, MASK12BITS);

		if (is2t)
			rf_b_mode = FUNC1(hw, RF90_PATH_B, 0x00,
						  MASK12BITS);

		FUNC4(hw, RF90_PATH_A, 0x00, MASK12BITS,
			      (rf_a_mode & 0x8FFFF) | 0x10000);

		if (is2t)
			FUNC4(hw, RF90_PATH_B, 0x00, MASK12BITS,
				      (rf_b_mode & 0x8FFFF) | 0x10000);
	}
	lc_cal = FUNC1(hw, RF90_PATH_A, 0x18, MASK12BITS);

	FUNC4(hw, RF90_PATH_A, 0x18, MASK12BITS, lc_cal | 0x08000);

	FUNC0(100);

	if ((tmpreg & 0x70) != 0) {
		FUNC5(rtlpriv, 0xd03, tmpreg);
		FUNC4(hw, RF90_PATH_A, 0x00, MASK12BITS, rf_a_mode);

		if (is2t)
			FUNC4(hw, RF90_PATH_B, 0x00, MASK12BITS,
				      rf_b_mode);
	} else {
		FUNC5(rtlpriv, REG_TXPAUSE, 0x00);
	}
}