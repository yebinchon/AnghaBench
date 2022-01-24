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
struct rtl8xxxu_priv {int rf_paths; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FPGA_RF_MODE_JAPAN ; 
 int OFDM_RF_PATH_TX_MASK ; 
 int /*<<< orphan*/  REG_FPGA0_RF_MODE ; 
 int /*<<< orphan*/  REG_FPGA0_XAB_RF_PARM ; 
 int /*<<< orphan*/  REG_OFDM0_TRX_PATH_ENABLE ; 
 int /*<<< orphan*/  REG_RX_WAIT_CCA ; 
 int /*<<< orphan*/  REG_SPS0_CTRL ; 
 int /*<<< orphan*/  RF6052_REG_AC ; 
 int /*<<< orphan*/  RF_A ; 
 int /*<<< orphan*/  RF_B ; 
 int FUNC1 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct rtl8xxxu_priv *priv)
{
	u8 sps0;
	u32 val32;

	sps0 = FUNC2(priv, REG_SPS0_CTRL);

	/* RF RX code for preamble power saving */
	val32 = FUNC1(priv, REG_FPGA0_XAB_RF_PARM);
	val32 &= ~(FUNC0(3) | FUNC0(4) | FUNC0(5));
	if (priv->rf_paths == 2)
		val32 &= ~(FUNC0(19) | FUNC0(20) | FUNC0(21));
	FUNC3(priv, REG_FPGA0_XAB_RF_PARM, val32);

	/* Disable TX for four paths */
	val32 = FUNC1(priv, REG_OFDM0_TRX_PATH_ENABLE);
	val32 &= ~OFDM_RF_PATH_TX_MASK;
	FUNC3(priv, REG_OFDM0_TRX_PATH_ENABLE, val32);

	/* Enable power saving */
	val32 = FUNC1(priv, REG_FPGA0_RF_MODE);
	val32 |= FPGA_RF_MODE_JAPAN;
	FUNC3(priv, REG_FPGA0_RF_MODE, val32);

	/* AFE control register to power down bits [30:22] */
	if (priv->rf_paths == 2)
		FUNC3(priv, REG_RX_WAIT_CCA, 0x00db25a0);
	else
		FUNC3(priv, REG_RX_WAIT_CCA, 0x001b25a0);

	/* Power down RF module */
	FUNC5(priv, RF_A, RF6052_REG_AC, 0);
	if (priv->rf_paths == 2)
		FUNC5(priv, RF_B, RF6052_REG_AC, 0);

	sps0 &= ~(FUNC0(0) | FUNC0(3));
	FUNC4(priv, REG_SPS0_CTRL, sps0);
}