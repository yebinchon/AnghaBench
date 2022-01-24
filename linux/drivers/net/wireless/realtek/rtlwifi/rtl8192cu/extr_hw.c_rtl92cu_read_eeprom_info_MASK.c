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
struct rtl_efuse {int autoload_failflag; int /*<<< orphan*/  epromtype; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int BOOT_FROM_EEPROM ; 
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  EEPROM_93C46 ; 
 int /*<<< orphan*/  EEPROM_BOOT_EFUSE ; 
 int EEPROM_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_9346CR ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 struct rtl_efuse* FUNC4 (struct rtl_priv*) ; 
 struct rtl_hal* FUNC5 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC6 (struct ieee80211_hw*) ; 
 int FUNC7 (struct rtl_priv*,int /*<<< orphan*/ ) ; 

void FUNC8(struct ieee80211_hw *hw)
{

	struct rtl_priv *rtlpriv = FUNC6(hw);
	struct rtl_efuse *rtlefuse = FUNC4(FUNC6(hw));
	struct rtl_hal *rtlhal = FUNC5(FUNC6(hw));
	u8 tmp_u1b;

	if (!FUNC0(rtlhal->version))
		return;
	tmp_u1b = FUNC7(rtlpriv, REG_9346CR);
	rtlefuse->epromtype = (tmp_u1b & BOOT_FROM_EEPROM) ?
			       EEPROM_93C46 : EEPROM_BOOT_EFUSE;
	FUNC1(rtlpriv, COMP_INIT, DBG_DMESG, "Boot from %s\n",
		 tmp_u1b & BOOT_FROM_EEPROM ? "EERROM" : "EFUSE");
	rtlefuse->autoload_failflag = (tmp_u1b & EEPROM_EN) ? false : true;
	FUNC1(rtlpriv, COMP_INIT, DBG_LOUD, "Autoload %s\n",
		 tmp_u1b & EEPROM_EN ? "OK!!" : "ERR!!");
	FUNC3(hw);
	FUNC2(hw);
	return;
}