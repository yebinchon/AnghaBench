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
typedef  int u16 ;
struct rtl8xxxu_priv {scalar_t__ hi_pa; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_RF_CTRL ; 
 int /*<<< orphan*/  REG_SYS_FUNC ; 
 int RF_ENABLE ; 
 int RF_RSTB ; 
 int RF_SDMRSTB ; 
 int SYS_FUNC_BBRSTB ; 
 int SYS_FUNC_BB_GLB_RSTN ; 
 int SYS_FUNC_DIO_RF ; 
 int SYS_FUNC_USBA ; 
 int SYS_FUNC_USBD ; 
 int /*<<< orphan*/  rtl8192eu_phy_init_table ; 
 int /*<<< orphan*/  rtl8xxx_agc_8192eu_highpa_table ; 
 int /*<<< orphan*/  rtl8xxx_agc_8192eu_std_table ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct rtl8xxxu_priv *priv)
{
	u8 val8;
	u16 val16;

	val16 = FUNC1(priv, REG_SYS_FUNC);
	val16 |= SYS_FUNC_BB_GLB_RSTN | SYS_FUNC_BBRSTB | SYS_FUNC_DIO_RF;
	FUNC2(priv, REG_SYS_FUNC, val16);

	/* 6. 0x1f[7:0] = 0x07 */
	val8 = RF_ENABLE | RF_RSTB | RF_SDMRSTB;
	FUNC3(priv, REG_RF_CTRL, val8);

	val16 = FUNC1(priv, REG_SYS_FUNC);
	val16 |= (SYS_FUNC_USBA | SYS_FUNC_USBD | SYS_FUNC_DIO_RF |
		  SYS_FUNC_BB_GLB_RSTN | SYS_FUNC_BBRSTB);
	FUNC2(priv, REG_SYS_FUNC, val16);
	val8 = RF_ENABLE | RF_RSTB | RF_SDMRSTB;
	FUNC3(priv, REG_RF_CTRL, val8);
	FUNC0(priv, rtl8192eu_phy_init_table);

	if (priv->hi_pa)
		FUNC0(priv, rtl8xxx_agc_8192eu_highpa_table);
	else
		FUNC0(priv, rtl8xxx_agc_8192eu_std_table);
}