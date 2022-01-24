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
struct rtl_hal {int dummy; } ;
struct rtl_efuse {scalar_t__ antenna_div_type; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ CGCS_RX_HW_ANTDIV ; 
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int MASKLWORD ; 
 int RCONFIG_RAM64x16 ; 
 int /*<<< orphan*/  REG_LEDCFG0 ; 
 int RFPGA0_XAB_RFINTERFACESW ; 
 int RFPGA0_XAB_RFPARAMETER ; 
 int RFPGA0_XA_RFINTERFACEOE ; 
 int RFPGA0_XB_RFINTERFACEOE ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct rtl_hal*) ; 
 struct rtl_efuse* FUNC3 (struct rtl_priv*) ; 
 struct rtl_hal* FUNC4 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 
 int FUNC6 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct ieee80211_hw *hw,
					   bool bmain, bool is2t)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);
	struct rtl_hal *rtlhal = FUNC4(FUNC5(hw));
	struct rtl_efuse *rtlefuse = FUNC3(FUNC5(hw));

	FUNC1(rtlpriv, COMP_INIT , DBG_LOUD , "\n");

	if (FUNC2(rtlhal)) {
		u8 u1btmp;

		u1btmp = FUNC6(rtlpriv, REG_LEDCFG0);
		FUNC8(rtlpriv, REG_LEDCFG0, u1btmp | FUNC0(7));
		FUNC7(hw, RFPGA0_XAB_RFPARAMETER, FUNC0(13), 0x01);
	}
	if (is2t) {
		if (bmain)
			FUNC7(hw, RFPGA0_XB_RFINTERFACEOE,
				      FUNC0(5) | FUNC0(6), 0x1);
		else
			FUNC7(hw, RFPGA0_XB_RFINTERFACEOE,
				      FUNC0(5) | FUNC0(6), 0x2);
	} else {
		FUNC7(hw, RFPGA0_XAB_RFINTERFACESW, FUNC0(8) | FUNC0(9), 0);
		FUNC7(hw, 0x914, MASKLWORD, 0x0201);

		/* We use the RF definition of MAIN and AUX,
		 * left antenna and right antenna repectively.
		 * Default output at AUX.
		 */
		if (bmain) {
			FUNC7(hw, RFPGA0_XA_RFINTERFACEOE,
				      FUNC0(14) | FUNC0(13) | FUNC0(12), 0);
			FUNC7(hw, RFPGA0_XB_RFINTERFACEOE,
				      FUNC0(5) | FUNC0(4) | FUNC0(3), 0);
			if (rtlefuse->antenna_div_type == CGCS_RX_HW_ANTDIV)
				FUNC7(hw, RCONFIG_RAM64x16, FUNC0(31), 0);
		} else {
			FUNC7(hw, RFPGA0_XA_RFINTERFACEOE,
				      FUNC0(14) | FUNC0(13) | FUNC0(12), 1);
			FUNC7(hw, RFPGA0_XB_RFINTERFACEOE,
				      FUNC0(5) | FUNC0(4) | FUNC0(3), 1);
			if (rtlefuse->antenna_div_type == CGCS_RX_HW_ANTDIV)
				FUNC7(hw, RCONFIG_RAM64x16, FUNC0(31), 1);
		}
	}
}