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
typedef  int u32 ;
struct rtl_phy {scalar_t__ rf_type; int /*<<< orphan*/  polarity_ctl; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum version_8723e { ____Placeholder_version_8723e } version_8723e ;

/* Variables and functions */
 int BT_FUNC ; 
 int CHIP_8723 ; 
 int CHIP_VENDOR_UMC ; 
 int CHIP_VER_RTL_MASK ; 
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ NORMAL_CHIP ; 
 int /*<<< orphan*/  REG_GPIO_OUTSTS ; 
 int /*<<< orphan*/  REG_MULTI_FUNC_CTRL ; 
 int /*<<< orphan*/  REG_SYS_CFG ; 
 scalar_t__ RF_1T1R ; 
 scalar_t__ RF_2T2R ; 
 int RF_RL_ID ; 
 int /*<<< orphan*/  RT_POLARITY_HIGH_ACT ; 
 int /*<<< orphan*/  RT_POLARITY_LOW_ACT ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int TRP_VAUX_EN ; 
 int VENDOR_ID ; 
#define  VERSION_NORMAL_UMC_CHIP_8723_1T1R_A_CUT 130 
#define  VERSION_NORMAL_UMC_CHIP_8723_1T1R_B_CUT 129 
#define  VERSION_TEST_UMC_CHIP_8723 128 
 int WL_HWPDN_SL ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 
 int FUNC5 (struct rtl_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum version_8723e FUNC6(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC4(hw);
	struct rtl_phy *rtlphy = &(rtlpriv->phy);
	enum version_8723e version = 0x0000;
	u32 value32;

	value32 = FUNC5(rtlpriv, REG_SYS_CFG);
	if (value32 & TRP_VAUX_EN) {
		version = (enum version_8723e)(version |
			((value32 & VENDOR_ID) ? CHIP_VENDOR_UMC : 0));
		/* RTL8723 with BT function. */
		version = (enum version_8723e)(version |
			((value32 & BT_FUNC) ? CHIP_8723 : 0));

	} else {
		/* Normal mass production chip. */
		version = (enum version_8723e) NORMAL_CHIP;
		version = (enum version_8723e)(version |
			((value32 & VENDOR_ID) ? CHIP_VENDOR_UMC : 0));
		/* RTL8723 with BT function. */
		version = (enum version_8723e)(version |
			((value32 & BT_FUNC) ? CHIP_8723 : 0));
		if (FUNC1(version))
			version = (enum version_8723e)(version |
			((value32 & CHIP_VER_RTL_MASK)));/* IC version (CUT) */
		if (FUNC0(version)) {
			value32 = FUNC5(rtlpriv, REG_GPIO_OUTSTS);
			/* ROM code version. */
			version = (enum version_8723e)(version |
				((value32 & RF_RL_ID)>>20));
		}
	}

	if (FUNC0(version)) {
		value32 = FUNC5(rtlpriv, REG_MULTI_FUNC_CTRL);
		rtlphy->polarity_ctl = ((value32 & WL_HWPDN_SL) ?
					RT_POLARITY_HIGH_ACT :
					RT_POLARITY_LOW_ACT);
	}
	switch (version) {
	case VERSION_TEST_UMC_CHIP_8723:
		FUNC2(rtlpriv, COMP_INIT, DBG_TRACE,
			 "Chip Version ID: VERSION_TEST_UMC_CHIP_8723.\n");
			break;
	case VERSION_NORMAL_UMC_CHIP_8723_1T1R_A_CUT:
		FUNC2(rtlpriv, COMP_INIT, DBG_TRACE,
			 "Chip Version ID: VERSION_NORMAL_UMC_CHIP_8723_1T1R_A_CUT.\n");
		break;
	case VERSION_NORMAL_UMC_CHIP_8723_1T1R_B_CUT:
		FUNC2(rtlpriv, COMP_INIT, DBG_TRACE,
			 "Chip Version ID: VERSION_NORMAL_UMC_CHIP_8723_1T1R_B_CUT.\n");
		break;
	default:
		FUNC3("Chip Version ID: Unknown. Bug?\n");
		break;
	}

	if (FUNC0(version))
		rtlphy->rf_type = RF_1T1R;

	FUNC2(rtlpriv, COMP_INIT, DBG_LOUD, "Chip RF Type: %s\n",
		(rtlphy->rf_type == RF_2T2R) ? "RF_2T2R" : "RF_1T1R");

	return version;
}