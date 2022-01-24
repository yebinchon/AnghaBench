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
struct TYPE_4__ {int txpower_trackinginit; int thermalvalue; scalar_t__ txpowercount; } ;
struct TYPE_3__ {int* thermalmeter; } ;
struct rtl_priv {TYPE_2__ dm; TYPE_1__ efuse; } ;
struct rtl_efuse {int /*<<< orphan*/  eeprom_thermalmeter; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_POWER_TRACKING ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  FW_CMD_TXPWR_TRACK_THERMAL ; 
 int FW_TXPWR_TRACK_THERMAL ; 
 int /*<<< orphan*/  RF90_PATH_A ; 
 int /*<<< orphan*/  RF_T_METER ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  WFM5 ; 
 int FUNC1 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 struct rtl_efuse* FUNC4 (struct rtl_priv*) ; 
 scalar_t__ FUNC5 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct rtl_priv* FUNC6 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(
					struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC6(hw);
	struct rtl_efuse *rtlefuse = FUNC4(FUNC6(hw));
	u8 thermalvalue = 0;
	u32 fw_cmd = 0;

	rtlpriv->dm.txpower_trackinginit = true;

	thermalvalue = (u8)FUNC5(hw, RF90_PATH_A, RF_T_METER, 0x1f);

	FUNC0(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
		 "Readback Thermal Meter = 0x%x pre thermal meter 0x%x eeprom_thermal meter 0x%x\n",
		 thermalvalue,
		 rtlpriv->dm.thermalvalue, rtlefuse->eeprom_thermalmeter);

	if (thermalvalue) {
		rtlpriv->dm.thermalvalue = thermalvalue;
		if (FUNC1(rtlpriv) >= 0x35) {
			FUNC3(hw, FW_CMD_TXPWR_TRACK_THERMAL);
		} else {
			fw_cmd = (FW_TXPWR_TRACK_THERMAL |
				 (rtlpriv->efuse.thermalmeter[0] << 8) |
				 (thermalvalue << 16));

			FUNC0(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
				 "Write to FW Thermal Val = 0x%x\n", fw_cmd);

			FUNC7(rtlpriv, WFM5, fw_cmd);
			FUNC2(hw);
		}
	}

	rtlpriv->dm.txpowercount = 0;
}