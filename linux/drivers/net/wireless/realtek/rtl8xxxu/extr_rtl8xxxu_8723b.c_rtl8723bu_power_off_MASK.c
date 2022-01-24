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
typedef  int /*<<< orphan*/  u16 ;
struct rtl8xxxu_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int MCU_FW_RAM_SEL ; 
 scalar_t__ REG_APS_FSMCO ; 
 scalar_t__ REG_CR ; 
 scalar_t__ REG_GPIO_INTM ; 
 scalar_t__ REG_MCU_FW_DL ; 
 int /*<<< orphan*/  REG_SYS_FUNC ; 
 scalar_t__ REG_TX_REPORT_CTRL ; 
 int /*<<< orphan*/  SYS_FUNC_CPU_ENABLE ; 
 int TX_REPORT_CTRL_TIMER_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8xxxu_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8xxxu_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8xxxu_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8xxxu_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rtl8xxxu_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl8xxxu_priv*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC9(struct rtl8xxxu_priv *priv)
{
	u8 val8;
	u16 val16;

	FUNC4(priv);

	/*
	 * Disable TX report timer
	 */
	val8 = FUNC6(priv, REG_TX_REPORT_CTRL);
	val8 &= ~TX_REPORT_CTRL_TIMER_ENABLE;
	FUNC8(priv, REG_TX_REPORT_CTRL, val8);

	FUNC8(priv, REG_CR, 0x0000);

	FUNC2(priv);

	/* Reset Firmware if running in RAM */
	if (FUNC6(priv, REG_MCU_FW_DL) & MCU_FW_RAM_SEL)
		FUNC3(priv);

	/* Reset MCU */
	val16 = FUNC5(priv, REG_SYS_FUNC);
	val16 &= ~SYS_FUNC_CPU_ENABLE;
	FUNC7(priv, REG_SYS_FUNC, val16);

	/* Reset MCU ready status */
	FUNC8(priv, REG_MCU_FW_DL, 0x00);

	FUNC1(priv);

	val8 = FUNC6(priv, REG_APS_FSMCO + 1);
	val8 |= FUNC0(3); /* APS_FSMCO_HW_SUSPEND */
	FUNC8(priv, REG_APS_FSMCO + 1, val8);

	/* 0x48[16] = 1 to enable GPIO9 as EXT wakeup */
	val8 = FUNC6(priv, REG_GPIO_INTM + 2);
	val8 |= FUNC0(0);
	FUNC8(priv, REG_GPIO_INTM + 2, val8);
}