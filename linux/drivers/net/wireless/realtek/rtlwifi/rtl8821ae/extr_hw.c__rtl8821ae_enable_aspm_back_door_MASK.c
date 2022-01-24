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
struct rtl_hal {scalar_t__ hw_type; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int ASPM_L1_LATENCY ; 
 int FUNC0 (int) ; 
 scalar_t__ HARDWARE_TYPE_RTL8812AE ; 
 scalar_t__ HARDWARE_TYPE_RTL8821AE ; 
 int FUNC1 (struct rtl_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int,int) ; 
 int FUNC3 (struct rtl_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,int,int) ; 
 struct rtl_hal* FUNC5 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC6 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC6(hw);
	struct rtl_hal *rtlhal = FUNC5(FUNC6(hw));
	u8 tmp;

	if (rtlhal->hw_type == HARDWARE_TYPE_RTL8821AE) {
		if (FUNC3(rtlpriv, 0x04) != 0x8544)
			FUNC4(rtlpriv, 0x04, 0x8544);

		if (FUNC3(rtlpriv, 0x0b) != 0x0070)
			FUNC4(rtlpriv, 0x0b, 0x0070);
	}

	tmp = FUNC1(rtlpriv, 0x70f);
	FUNC2(rtlpriv, 0x70f, tmp | FUNC0(7) |
			     ASPM_L1_LATENCY << 3);

	tmp = FUNC1(rtlpriv, 0x719);
	FUNC2(rtlpriv, 0x719, tmp | FUNC0(3) | FUNC0(4));

	if (rtlhal->hw_type == HARDWARE_TYPE_RTL8812AE) {
		tmp  = FUNC1(rtlpriv, 0x718);
		FUNC2(rtlpriv, 0x718, tmp|FUNC0(4));
	}
}