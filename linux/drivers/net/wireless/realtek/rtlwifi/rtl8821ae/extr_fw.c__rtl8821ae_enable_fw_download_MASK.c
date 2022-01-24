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
 struct rtl_priv* FUNC0 (struct ieee80211_hw*) ; 
 int FUNC1 (struct rtl_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *hw, bool enable)
{
	struct rtl_priv *rtlpriv = FUNC0(hw);
	u8 tmp;

	if (enable) {
		FUNC2(rtlpriv, REG_MCUFWDL, 0x05);

		tmp = FUNC1(rtlpriv, REG_MCUFWDL + 2);
		FUNC2(rtlpriv, REG_MCUFWDL + 2, tmp & 0xf7);

		tmp = FUNC1(rtlpriv, REG_MCUFWDL);
	} else {
		tmp = FUNC1(rtlpriv, REG_MCUFWDL);
		FUNC2(rtlpriv, REG_MCUFWDL, tmp & 0xfe);
		tmp = FUNC1(rtlpriv, REG_MCUFWDL);
	}
}