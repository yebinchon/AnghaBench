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
 int MCU_FW_RAM_SEL ; 
 int /*<<< orphan*/  REG_MCU_FW_DL ; 
 int /*<<< orphan*/  REG_RF_CTRL ; 
 int /*<<< orphan*/  REG_SYS_FUNC ; 
 int /*<<< orphan*/  REG_TX_REPORT_CTRL ; 
 int /*<<< orphan*/  SYS_FUNC_CPU_ENABLE ; 
 int TX_REPORT_CTRL_TIMER_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8xxxu_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8xxxu_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8xxxu_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8xxxu_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8xxxu_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8xxxu_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(struct rtl8xxxu_priv *priv)
{
	u8 val8;
	u16 val16;

	FUNC4(priv);

	val8 = FUNC6(priv, REG_TX_REPORT_CTRL);
	val8 &= ~TX_REPORT_CTRL_TIMER_ENABLE;
	FUNC9(priv, REG_TX_REPORT_CTRL, val8);

	/* Turn off RF */
	FUNC9(priv, REG_RF_CTRL, 0x00);

	FUNC1(priv);

	/* Reset Firmware if running in RAM */
	if (FUNC6(priv, REG_MCU_FW_DL) & MCU_FW_RAM_SEL)
		FUNC3(priv);

	/* Reset MCU */
	val16 = FUNC5(priv, REG_SYS_FUNC);
	val16 &= ~SYS_FUNC_CPU_ENABLE;
	FUNC8(priv, REG_SYS_FUNC, val16);

	/* Reset MCU ready status */
	FUNC9(priv, REG_MCU_FW_DL, 0x00);

	FUNC7(priv);

	FUNC0(priv);
	FUNC2(priv);
}