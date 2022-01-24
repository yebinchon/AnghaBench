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
typedef  int u32 ;
typedef  int u16 ;
struct rtl8xxxu_priv {int tx_paths; scalar_t__ rtl_chip; int chip_cut; scalar_t__ hi_pa; scalar_t__ vendor_umc; scalar_t__ has_bluetooth; } ;

/* Variables and functions */
 int AFE_PLL_320_ENABLE ; 
 int AFE_XTAL_BT_GATE ; 
 int AFE_XTAL_RF_GATE ; 
 int FUNC0 (int) ; 
 int LDOA15_ENABLE ; 
 int LDOA15_OBUF ; 
 int LDOV12D_ENABLE ; 
 int LDOV12D_VADJ_SHIFT ; 
 scalar_t__ REG_AFE_PLL_CTRL ; 
 int /*<<< orphan*/  REG_AFE_XTAL_CTRL ; 
 int /*<<< orphan*/  REG_LDOA15_CTRL ; 
 scalar_t__ REG_OFDM0_AGC_PARM1 ; 
 scalar_t__ REG_RF_CTRL ; 
 int /*<<< orphan*/  REG_SYS_FUNC ; 
 int RF_ENABLE ; 
 int RF_RSTB ; 
 int RF_SDMRSTB ; 
 scalar_t__ RTL8188R ; 
 int SYS_FUNC_BBRSTB ; 
 int SYS_FUNC_BB_GLB_RSTN ; 
 int /*<<< orphan*/  rtl8188ru_phy_1t_highpa_table ; 
 int /*<<< orphan*/  rtl8192cu_phy_2t_init_table ; 
 int /*<<< orphan*/  rtl8723a_phy_1t_init_table ; 
 int /*<<< orphan*/  rtl8xxx_agc_highpa_table ; 
 int /*<<< orphan*/  rtl8xxx_agc_standard_table ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rtl8xxxu_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8xxxu_priv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

void FUNC9(struct rtl8xxxu_priv *priv)
{
	u8 val8, ldoa15, ldov12d, lpldo, ldohci12;
	u16 val16;
	u32 val32;

	val8 = FUNC4(priv, REG_AFE_PLL_CTRL);
	FUNC8(2);
	val8 |= AFE_PLL_320_ENABLE;
	FUNC7(priv, REG_AFE_PLL_CTRL, val8);
	FUNC8(2);

	FUNC7(priv, REG_AFE_PLL_CTRL + 1, 0xff);
	FUNC8(2);

	val16 = FUNC2(priv, REG_SYS_FUNC);
	val16 |= SYS_FUNC_BB_GLB_RSTN | SYS_FUNC_BBRSTB;
	FUNC5(priv, REG_SYS_FUNC, val16);

	val32 = FUNC3(priv, REG_AFE_XTAL_CTRL);
	val32 &= ~AFE_XTAL_RF_GATE;
	if (priv->has_bluetooth)
		val32 &= ~AFE_XTAL_BT_GATE;
	FUNC6(priv, REG_AFE_XTAL_CTRL, val32);

	/* 6. 0x1f[7:0] = 0x07 */
	val8 = RF_ENABLE | RF_RSTB | RF_SDMRSTB;
	FUNC7(priv, REG_RF_CTRL, val8);

	if (priv->hi_pa)
		FUNC1(priv, rtl8188ru_phy_1t_highpa_table);
	else if (priv->tx_paths == 2)
		FUNC1(priv, rtl8192cu_phy_2t_init_table);
	else
		FUNC1(priv, rtl8723a_phy_1t_init_table);

	if (priv->rtl_chip == RTL8188R && priv->hi_pa &&
	    priv->vendor_umc && priv->chip_cut == 1)
		FUNC7(priv, REG_OFDM0_AGC_PARM1 + 2, 0x50);

	if (priv->hi_pa)
		FUNC1(priv, rtl8xxx_agc_highpa_table);
	else
		FUNC1(priv, rtl8xxx_agc_standard_table);

	ldoa15 = LDOA15_ENABLE | LDOA15_OBUF;
	ldov12d = LDOV12D_ENABLE | FUNC0(2) | (2 << LDOV12D_VADJ_SHIFT);
	ldohci12 = 0x57;
	lpldo = 1;
	val32 = (lpldo << 24) | (ldohci12 << 16) | (ldov12d << 8) | ldoa15;
	FUNC6(priv, REG_LDOA15_CTRL, val32);
}