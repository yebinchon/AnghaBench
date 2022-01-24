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
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ REG_MCUFWDL ; 
 scalar_t__ REG_SYS_FUNC_EN ; 
 struct rtl_priv* FUNC0 (struct ieee80211_hw*) ; 
 int FUNC1 (struct rtl_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,scalar_t__,int) ; 

void FUNC3(struct ieee80211_hw *hw, bool enable)
{
	struct rtl_priv *rtlpriv = FUNC0(hw);
	u8 tmp;

	if (enable) {
		tmp = FUNC1(rtlpriv, REG_SYS_FUNC_EN + 1);
		FUNC2(rtlpriv, REG_SYS_FUNC_EN + 1,
			       tmp | 0x04);

		tmp = FUNC1(rtlpriv, REG_MCUFWDL);
		FUNC2(rtlpriv, REG_MCUFWDL, tmp | 0x01);

		tmp = FUNC1(rtlpriv, REG_MCUFWDL + 2);
		FUNC2(rtlpriv, REG_MCUFWDL + 2, tmp & 0xf7);
	} else {
		tmp = FUNC1(rtlpriv, REG_MCUFWDL);
		FUNC2(rtlpriv, REG_MCUFWDL, tmp & 0xfe);

		FUNC2(rtlpriv, REG_MCUFWDL + 1, 0x00);
	}
}