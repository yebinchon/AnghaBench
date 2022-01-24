#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_2__ {int* rfpath_rxenable; } ;
struct rtl_phy {int dummy; } ;
struct rtl_priv {TYPE_1__ dm; struct rtl_phy phy; } ;
struct rtl_hal {int /*<<< orphan*/  version; } ;
struct rtl_efuse {int autoload_failflag; int /*<<< orphan*/  epromtype; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  EEPROM_93C46 ; 
 int /*<<< orphan*/  EEPROM_BOOT_EFUSE ; 
 int /*<<< orphan*/  REG_9346CR ; 
 scalar_t__ RF_1T1R ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC5 (struct rtl_phy*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct rtl_efuse* FUNC7 (struct rtl_priv*) ; 
 struct rtl_hal* FUNC8 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC9 (struct ieee80211_hw*) ; 
 int FUNC10 (struct rtl_priv*,int /*<<< orphan*/ ) ; 

void FUNC11(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC9(hw);
	struct rtl_efuse *rtlefuse = FUNC7(FUNC9(hw));
	struct rtl_phy *rtlphy = &(rtlpriv->phy);
	struct rtl_hal *rtlhal = FUNC8(FUNC9(hw));
	u8 tmp_u1b;

	rtlhal->version = FUNC4(hw);
	if (FUNC5(rtlphy) == RF_1T1R)
		rtlpriv->dm.rfpath_rxenable[0] = true;
	else
		rtlpriv->dm.rfpath_rxenable[0] =
		    rtlpriv->dm.rfpath_rxenable[1] = true;
	FUNC1(rtlpriv, COMP_INIT, DBG_LOUD, "VersionID = 0x%4x\n",
						rtlhal->version);
	tmp_u1b = FUNC10(rtlpriv, REG_9346CR);
	if (tmp_u1b & FUNC0(4)) {
		FUNC1(rtlpriv, COMP_INIT, DBG_DMESG, "Boot from EEPROM\n");
		rtlefuse->epromtype = EEPROM_93C46;
	} else {
		FUNC1(rtlpriv, COMP_INIT, DBG_DMESG, "Boot from EFUSE\n");
		rtlefuse->epromtype = EEPROM_BOOT_EFUSE;
	}
	if (tmp_u1b & FUNC0(5)) {
		FUNC1(rtlpriv, COMP_INIT, DBG_LOUD, "Autoload OK\n");
		rtlefuse->autoload_failflag = false;
		FUNC3(hw);
	} else {
		FUNC6("Autoload ERR!!\n");
	}
	FUNC2(hw);
}