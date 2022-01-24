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
typedef  int /*<<< orphan*/  u32 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {scalar_t__ hw_type; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ HARDWARE_TYPE_RTL8192CE ; 
 scalar_t__ HARDWARE_TYPE_RTL8192CU ; 
 int /*<<< orphan*/  MCUFWDL_EN ; 
 scalar_t__ REG_MCUFWDL ; 
 scalar_t__ REG_SYS_FUNC_EN ; 
 struct rtl_hal* FUNC0 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int FUNC2 (struct rtl_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl_priv*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *hw, bool enable)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	struct rtl_hal *rtlhal = FUNC0(FUNC1(hw));

	if (rtlhal->hw_type == HARDWARE_TYPE_RTL8192CU) {
		u32 value32 = FUNC3(rtlpriv, REG_MCUFWDL);

		if (enable)
			value32 |= MCUFWDL_EN;
		else
			value32 &= ~MCUFWDL_EN;
		FUNC5(rtlpriv, REG_MCUFWDL, value32);
	} else if (rtlhal->hw_type == HARDWARE_TYPE_RTL8192CE) {
		u8 tmp;

		if (enable) {
			tmp = FUNC2(rtlpriv, REG_SYS_FUNC_EN + 1);
			FUNC4(rtlpriv, REG_SYS_FUNC_EN + 1,
				       tmp | 0x04);

			tmp = FUNC2(rtlpriv, REG_MCUFWDL);
			FUNC4(rtlpriv, REG_MCUFWDL, tmp | 0x01);

			tmp = FUNC2(rtlpriv, REG_MCUFWDL + 2);
			FUNC4(rtlpriv, REG_MCUFWDL + 2, tmp & 0xf7);
		} else {
			tmp = FUNC2(rtlpriv, REG_MCUFWDL);
			FUNC4(rtlpriv, REG_MCUFWDL, tmp & 0xfe);

			FUNC4(rtlpriv, REG_MCUFWDL + 1, 0x00);
		}
	}
}