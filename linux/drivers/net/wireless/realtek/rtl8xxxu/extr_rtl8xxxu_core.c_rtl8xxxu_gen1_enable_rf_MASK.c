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
struct rtl8xxxu_priv {int rf_paths; int tx_paths; scalar_t__ rtl_chip; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FPGA_RF_MODE_JAPAN ; 
 int OFDM_RF_PATH_TX_A ; 
 int OFDM_RF_PATH_TX_B ; 
 int OFDM_RF_PATH_TX_MASK ; 
 int /*<<< orphan*/  REG_FPGA0_RF_MODE ; 
 int /*<<< orphan*/  REG_FPGA0_XAB_RF_PARM ; 
 int /*<<< orphan*/  REG_OFDM0_TRX_PATH_ENABLE ; 
 int /*<<< orphan*/  REG_RX_WAIT_CCA ; 
 int /*<<< orphan*/  REG_SPS0_CTRL ; 
 int /*<<< orphan*/  REG_TXPAUSE ; 
 int /*<<< orphan*/  RF6052_REG_AC ; 
 int /*<<< orphan*/  RF_A ; 
 int /*<<< orphan*/  RF_B ; 
 scalar_t__ RTL8191C ; 
 scalar_t__ RTL8192C ; 
 int FUNC1 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct rtl8xxxu_priv *priv)
{
	u8 val8;
	u32 val32;

	val8 = FUNC2(priv, REG_SPS0_CTRL);
	val8 |= FUNC0(0) | FUNC0(3);
	FUNC4(priv, REG_SPS0_CTRL, val8);

	val32 = FUNC1(priv, REG_FPGA0_XAB_RF_PARM);
	val32 &= ~(FUNC0(4) | FUNC0(5));
	val32 |= FUNC0(3);
	if (priv->rf_paths == 2) {
		val32 &= ~(FUNC0(20) | FUNC0(21));
		val32 |= FUNC0(19);
	}
	FUNC3(priv, REG_FPGA0_XAB_RF_PARM, val32);

	val32 = FUNC1(priv, REG_OFDM0_TRX_PATH_ENABLE);
	val32 &= ~OFDM_RF_PATH_TX_MASK;
	if (priv->tx_paths == 2)
		val32 |= OFDM_RF_PATH_TX_A | OFDM_RF_PATH_TX_B;
	else if (priv->rtl_chip == RTL8192C || priv->rtl_chip == RTL8191C)
		val32 |= OFDM_RF_PATH_TX_B;
	else
		val32 |= OFDM_RF_PATH_TX_A;
	FUNC3(priv, REG_OFDM0_TRX_PATH_ENABLE, val32);

	val32 = FUNC1(priv, REG_FPGA0_RF_MODE);
	val32 &= ~FPGA_RF_MODE_JAPAN;
	FUNC3(priv, REG_FPGA0_RF_MODE, val32);

	if (priv->rf_paths == 2)
		FUNC3(priv, REG_RX_WAIT_CCA, 0x63db25a0);
	else
		FUNC3(priv, REG_RX_WAIT_CCA, 0x631b25a0);

	FUNC5(priv, RF_A, RF6052_REG_AC, 0x32d95);
	if (priv->rf_paths == 2)
		FUNC5(priv, RF_B, RF6052_REG_AC, 0x32d95);

	FUNC4(priv, REG_TXPAUSE, 0x00);
}