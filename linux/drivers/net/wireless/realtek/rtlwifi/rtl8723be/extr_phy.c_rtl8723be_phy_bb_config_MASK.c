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
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_2__ {int crystalcap; } ;
struct rtl_priv {TYPE_1__ efuse; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FEN_BBRSTB ; 
 int FEN_BB_GLB_RSTN ; 
 int FEN_DIO_PCIE ; 
 int FEN_PCIEA ; 
 int FEN_PPLL ; 
 scalar_t__ REG_AFE_XTAL_CTRL ; 
 int /*<<< orphan*/  REG_MAC_PHY_CTRL ; 
 scalar_t__ REG_RF_CTRL ; 
 scalar_t__ REG_SYS_FUNC_EN ; 
 int RF_EN ; 
 int RF_RSTB ; 
 int RF_SDMRSTB ; 
 int FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 int FUNC4 (struct rtl_priv*,int) ; 
 int FUNC5 (struct rtl_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl_priv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rtl_priv*,scalar_t__,int) ; 

bool FUNC10(struct ieee80211_hw *hw)
{
	bool rtstatus = true;
	struct rtl_priv *rtlpriv = FUNC3(hw);
	u16 regval;
	u8 b_reg_hwparafile = 1;
	u32 tmp;
	u8 crystalcap = rtlpriv->efuse.crystalcap;
	FUNC2(hw);
	regval = FUNC5(rtlpriv, REG_SYS_FUNC_EN);
	FUNC9(rtlpriv, REG_SYS_FUNC_EN,
		       regval | FUNC0(13) | FUNC0(0) | FUNC0(1));

	FUNC7(rtlpriv, REG_RF_CTRL, RF_EN | RF_RSTB | RF_SDMRSTB);
	FUNC7(rtlpriv, REG_SYS_FUNC_EN,
		       FEN_PPLL | FEN_PCIEA | FEN_DIO_PCIE |
		       FEN_BB_GLB_RSTN | FEN_BBRSTB);
	tmp = FUNC4(rtlpriv, 0x4c);
	FUNC8(rtlpriv, 0x4c, tmp | FUNC0(23));

	FUNC7(rtlpriv, REG_AFE_XTAL_CTRL + 1, 0x80);

	if (b_reg_hwparafile == 1)
		rtstatus = FUNC1(hw);

	crystalcap = crystalcap & 0x3F;
	FUNC6(hw, REG_MAC_PHY_CTRL, 0xFFF000,
		      (crystalcap | crystalcap << 6));

	return rtstatus;
}