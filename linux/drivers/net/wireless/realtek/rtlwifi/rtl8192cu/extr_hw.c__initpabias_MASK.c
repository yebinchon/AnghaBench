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
struct rtl_priv {int dummy; } ;
struct rtl_hal {int /*<<< orphan*/  version; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF90_PATH_A ; 
 int /*<<< orphan*/  RF90_PATH_B ; 
 int FUNC3 (struct ieee80211_hw*,int) ; 
 struct rtl_hal* FUNC4 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 
 int FUNC6 (struct rtl_priv*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl_priv*,int,int) ; 

__attribute__((used)) static void FUNC9(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);
	struct rtl_hal *rtlhal = FUNC4(FUNC5(hw));
	u8 pa_setting;

	/* FIXED PA current issue */
	pa_setting = FUNC3(hw, 0x1FA);
	if (!(pa_setting & FUNC0(0))) {
		FUNC7(hw, RF90_PATH_A, 0x15, 0x0FFFFF, 0x0F406);
		FUNC7(hw, RF90_PATH_A, 0x15, 0x0FFFFF, 0x4F406);
		FUNC7(hw, RF90_PATH_A, 0x15, 0x0FFFFF, 0x8F406);
		FUNC7(hw, RF90_PATH_A, 0x15, 0x0FFFFF, 0xCF406);
	}
	if (!(pa_setting & FUNC0(1)) && FUNC2(rtlhal->version) &&
	    FUNC1(rtlhal->version)) {
		FUNC7(hw, RF90_PATH_B, 0x15, 0x0FFFFF, 0x0F406);
		FUNC7(hw, RF90_PATH_B, 0x15, 0x0FFFFF, 0x4F406);
		FUNC7(hw, RF90_PATH_B, 0x15, 0x0FFFFF, 0x8F406);
		FUNC7(hw, RF90_PATH_B, 0x15, 0x0FFFFF, 0xCF406);
	}
	if (!(pa_setting & FUNC0(4))) {
		pa_setting = FUNC6(rtlpriv, 0x16);
		pa_setting &= 0x0F;
		FUNC8(rtlpriv, 0x16, pa_setting | 0x90);
	}
}