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
struct rtl_hal {scalar_t__ macphymode; scalar_t__ interfaceindex; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int MAC0_ON ; 
 int MAC1_ON ; 
 int /*<<< orphan*/  REG_MAC0 ; 
 int /*<<< orphan*/  REG_MAC1 ; 
 int /*<<< orphan*/  REG_POWER_OFF_IN_PROCESS ; 
 scalar_t__ SINGLEMAC_SINGLEPHY ; 
 int /*<<< orphan*/  globalmutex_power ; 
 struct rtl_hal* FUNC1 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int FUNC3 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

bool FUNC7(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	struct rtl_hal *rtlhal = FUNC1(FUNC2(hw));
	u8 u1btmp;
	unsigned long flags;

	if (rtlhal->macphymode == SINGLEMAC_SINGLEPHY) {
		u1btmp = FUNC3(rtlpriv, REG_MAC0);
		FUNC4(rtlpriv, REG_MAC0, u1btmp & (~MAC0_ON));
		return true;
	}
	FUNC5(&globalmutex_power, flags);
	if (rtlhal->interfaceindex == 0) {
		u1btmp = FUNC3(rtlpriv, REG_MAC0);
		FUNC4(rtlpriv, REG_MAC0, u1btmp & (~MAC0_ON));
		u1btmp = FUNC3(rtlpriv, REG_MAC1);
		u1btmp &= MAC1_ON;
	} else {
		u1btmp = FUNC3(rtlpriv, REG_MAC1);
		FUNC4(rtlpriv, REG_MAC1, u1btmp & (~MAC1_ON));
		u1btmp = FUNC3(rtlpriv, REG_MAC0);
		u1btmp &= MAC0_ON;
	}
	if (u1btmp) {
		FUNC6(&globalmutex_power, flags);
		return false;
	}
	u1btmp = FUNC3(rtlpriv, REG_POWER_OFF_IN_PROCESS);
	u1btmp |= FUNC0(7);
	FUNC4(rtlpriv, REG_POWER_OFF_IN_PROCESS, u1btmp);
	FUNC6(&globalmutex_power, flags);
	return true;
}