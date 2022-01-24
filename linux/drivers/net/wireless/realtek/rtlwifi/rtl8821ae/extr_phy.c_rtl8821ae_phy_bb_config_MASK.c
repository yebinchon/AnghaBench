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
struct rtl_phy {void* reg_837; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_hal {scalar_t__ hw_type; } ;
struct rtl_efuse {int crystalcap; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FEN_BBRSTB ; 
 int FEN_BB_GLB_RSTN ; 
 int FEN_PCIEA ; 
 scalar_t__ HARDWARE_TYPE_RTL8812AE ; 
 int /*<<< orphan*/  REG_MAC_PHY_CTRL ; 
 int REG_OPT_CTRL ; 
 int REG_RF_CTRL ; 
 int REG_SYS_FUNC_EN ; 
 int FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 struct rtl_efuse* FUNC2 (struct rtl_priv*) ; 
 struct rtl_hal* FUNC3 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 
 void* FUNC5 (struct rtl_priv*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl_priv*,int,int) ; 

bool FUNC8(struct ieee80211_hw *hw)
{
	bool rtstatus = true;
	struct rtl_priv *rtlpriv = FUNC4(hw);
	struct rtl_efuse *rtlefuse = FUNC2(FUNC4(hw));
	struct rtl_phy *rtlphy = &rtlpriv->phy;
	struct rtl_hal *rtlhal = FUNC3(FUNC4(hw));
	u8 regval;
	u8 crystal_cap;

	FUNC1(hw);

	regval = FUNC5(rtlpriv, REG_SYS_FUNC_EN);
	regval |= FEN_PCIEA;
	FUNC7(rtlpriv, REG_SYS_FUNC_EN, regval);
	FUNC7(rtlpriv, REG_SYS_FUNC_EN,
		       regval | FEN_BB_GLB_RSTN | FEN_BBRSTB);

	FUNC7(rtlpriv, REG_RF_CTRL, 0x7);
	FUNC7(rtlpriv, REG_OPT_CTRL + 2, 0x7);

	rtstatus = FUNC0(hw);

	if (rtlhal->hw_type == HARDWARE_TYPE_RTL8812AE) {
		crystal_cap = rtlefuse->crystalcap & 0x3F;
		FUNC6(hw, REG_MAC_PHY_CTRL, 0x7FF80000,
			      (crystal_cap | (crystal_cap << 6)));
	} else {
		crystal_cap = rtlefuse->crystalcap & 0x3F;
		FUNC6(hw, REG_MAC_PHY_CTRL, 0xFFF000,
			      (crystal_cap | (crystal_cap << 6)));
	}
	rtlphy->reg_837 = FUNC5(rtlpriv, 0x837);

	return rtstatus;
}