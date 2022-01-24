#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_4__ {int* rfpath_rxenable; } ;
struct rtl_phy {int dummy; } ;
struct rtl_priv {TYPE_2__ dm; TYPE_1__* cfg; struct rtl_phy phy; } ;
struct rtl_hal {int /*<<< orphan*/  version; } ;
struct rtl_efuse {int autoload_failflag; int /*<<< orphan*/  epromtype; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * maps; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  EEPROM_93C46 ; 
 int /*<<< orphan*/  EEPROM_BOOT_EFUSE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int EFUSE_SEL_MASK ; 
 size_t EFUSE_TEST ; 
 int /*<<< orphan*/  EFUSE_WIFI_SEL_0 ; 
 int /*<<< orphan*/  REG_9346CR ; 
 scalar_t__ RF_1T1R ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC6 (struct rtl_phy*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 struct rtl_efuse* FUNC8 (struct rtl_priv*) ; 
 struct rtl_hal* FUNC9 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC10 (struct ieee80211_hw*) ; 
 int FUNC11 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

void FUNC14(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC10(hw);
	struct rtl_efuse *rtlefuse = FUNC8(FUNC10(hw));
	struct rtl_phy *rtlphy = &(rtlpriv->phy);
	struct rtl_hal *rtlhal = FUNC9(FUNC10(hw));
	u8 tmp_u1b;
	u32 value32;

	value32 = FUNC12(rtlpriv, rtlpriv->cfg->maps[EFUSE_TEST]);
	value32 = (value32 & ~EFUSE_SEL_MASK) | FUNC1(EFUSE_WIFI_SEL_0);
	FUNC13(rtlpriv, rtlpriv->cfg->maps[EFUSE_TEST], value32);

	rtlhal->version = FUNC5(hw);

	if (FUNC6(rtlphy) == RF_1T1R)
		rtlpriv->dm.rfpath_rxenable[0] = true;
	else
		rtlpriv->dm.rfpath_rxenable[0] =
		    rtlpriv->dm.rfpath_rxenable[1] = true;
	FUNC2(rtlpriv, COMP_INIT, DBG_LOUD, "VersionID = 0x%4x\n",
						rtlhal->version);

	tmp_u1b = FUNC11(rtlpriv, REG_9346CR);
	if (tmp_u1b & FUNC0(4)) {
		FUNC2(rtlpriv, COMP_INIT, DBG_DMESG, "Boot from EEPROM\n");
		rtlefuse->epromtype = EEPROM_93C46;
	} else {
		FUNC2(rtlpriv, COMP_INIT, DBG_DMESG, "Boot from EFUSE\n");
		rtlefuse->epromtype = EEPROM_BOOT_EFUSE;
	}
	if (tmp_u1b & FUNC0(5)) {
		FUNC2(rtlpriv, COMP_INIT, DBG_LOUD, "Autoload OK\n");
		rtlefuse->autoload_failflag = false;
		FUNC4(hw, false);
	} else {
		rtlefuse->autoload_failflag = true;
		FUNC4(hw, false);
		FUNC7("Autoload ERR!!\n");
	}
	FUNC3(hw);
}