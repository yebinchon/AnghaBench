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
typedef  int /*<<< orphan*/  u8 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {int macphymode; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_LOUD ; 
#define  DUALMAC_DUALPHY 130 
#define  DUALMAC_SINGLEPHY 129 
 int /*<<< orphan*/  REG_MAC_PHY_CTRL_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
#define  SINGLEMAC_SINGLEPHY 128 
 struct rtl_hal* FUNC1 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	struct rtl_hal *rtlhal = FUNC1(FUNC2(hw));
	u8 offset = REG_MAC_PHY_CTRL_NORMAL;

	switch (rtlhal->macphymode) {
	case DUALMAC_DUALPHY:
		FUNC0(rtlpriv, COMP_INIT, DBG_LOUD,
			 "MacPhyMode: DUALMAC_DUALPHY\n");
		FUNC3(rtlpriv, offset, 0xF3);
		break;
	case SINGLEMAC_SINGLEPHY:
		FUNC0(rtlpriv, COMP_INIT, DBG_LOUD,
			 "MacPhyMode: SINGLEMAC_SINGLEPHY\n");
		FUNC3(rtlpriv, offset, 0xF4);
		break;
	case DUALMAC_SINGLEPHY:
		FUNC0(rtlpriv, COMP_INIT, DBG_LOUD,
			 "MacPhyMode: DUALMAC_SINGLEPHY\n");
		FUNC3(rtlpriv, offset, 0xF1);
		break;
	}
}