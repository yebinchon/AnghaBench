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
struct rtl_efuse {int autoload_status; int autoload_failflag; int /*<<< orphan*/  epromtype; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  EEPROM_93C46 ; 
 int /*<<< orphan*/  EEPROM_BOOT_EFUSE ; 
 int /*<<< orphan*/  REG_9346CR ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct rtl_efuse* FUNC5 (struct rtl_priv*) ; 
 struct rtl_hal* FUNC6 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC7 (struct ieee80211_hw*) ; 
 int FUNC8 (struct rtl_priv*,int /*<<< orphan*/ ) ; 

void FUNC9(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC7(hw);
	struct rtl_efuse *rtlefuse = FUNC5(FUNC7(hw));
	struct rtl_hal *rtlhal = FUNC6(FUNC7(hw));
	u8 tmp_u1b;

	rtlhal->version = FUNC3(hw);
	tmp_u1b = FUNC8(rtlpriv, REG_9346CR);
	rtlefuse->autoload_status = tmp_u1b;
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
		FUNC2(hw);
	} else {
		FUNC4("Autoload ERR!!\n");
	}
	return;
}