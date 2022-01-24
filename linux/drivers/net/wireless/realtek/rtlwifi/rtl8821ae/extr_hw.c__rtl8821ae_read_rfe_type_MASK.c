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
struct rtl_hal {int rfe_type; scalar_t__ hw_type; scalar_t__ external_lna_2g; scalar_t__ external_lna_5g; scalar_t__ external_pa_2g; scalar_t__ external_pa_5g; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 size_t EEPROM_RFE_OPTION ; 
 scalar_t__ HARDWARE_TYPE_RTL8812AE ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 struct rtl_hal* FUNC2 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw, u8 *hwinfo,
			      bool autoload_fail)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_hal *rtlhal = FUNC2(rtlpriv);

	if (!autoload_fail) {
		if (hwinfo[EEPROM_RFE_OPTION] & FUNC0(7)) {
			if (rtlhal->external_lna_5g) {
				if (rtlhal->external_pa_5g) {
					if (rtlhal->external_lna_2g &&
					    rtlhal->external_pa_2g)
						rtlhal->rfe_type = 3;
					else
						rtlhal->rfe_type = 0;
				} else {
					rtlhal->rfe_type = 2;
				}
			} else {
				rtlhal->rfe_type = 4;
			}
		} else {
			rtlhal->rfe_type = hwinfo[EEPROM_RFE_OPTION] & 0x3F;

			if (rtlhal->rfe_type == 4 &&
			    (rtlhal->external_pa_5g ||
			     rtlhal->external_pa_2g ||
			     rtlhal->external_lna_5g ||
			     rtlhal->external_lna_2g)) {
				if (rtlhal->hw_type == HARDWARE_TYPE_RTL8812AE)
					rtlhal->rfe_type = 2;
			}
		}
	} else {
		rtlhal->rfe_type = 0x04;
	}

	FUNC1(rtlpriv, COMP_INIT, DBG_LOUD,
		 "RFE Type: 0x%2x\n", rtlhal->rfe_type);
}