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
struct rtl8xxxu_priv {int rf_paths; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  REG_BT_CONTROL_8723BU ; 
 int /*<<< orphan*/  REG_FPGA0_IQK ; 
 int /*<<< orphan*/  REG_IQK_AGC_PTS ; 
 int /*<<< orphan*/  REG_IQK_AGC_RSP ; 
 int /*<<< orphan*/  REG_RX_IQK ; 
 int /*<<< orphan*/  REG_RX_IQK_PI_A ; 
 int /*<<< orphan*/  REG_RX_IQK_PI_B ; 
 int /*<<< orphan*/  REG_RX_IQK_TONE_A ; 
 int /*<<< orphan*/  REG_RX_IQK_TONE_B ; 
 int /*<<< orphan*/  REG_RX_POWER_AFTER_IQK_A_2 ; 
 int /*<<< orphan*/  REG_RX_POWER_BEFORE_IQK_A_2 ; 
 int /*<<< orphan*/  REG_S0S1_PATH_SWITCH ; 
 int /*<<< orphan*/  REG_TX_IQK ; 
 int /*<<< orphan*/  REG_TX_IQK_PI_A ; 
 int /*<<< orphan*/  REG_TX_IQK_PI_B ; 
 int /*<<< orphan*/  REG_TX_IQK_TONE_A ; 
 int /*<<< orphan*/  REG_TX_IQK_TONE_B ; 
 int /*<<< orphan*/  REG_TX_POWER_AFTER_IQK_A ; 
 int /*<<< orphan*/  REG_TX_POWER_BEFORE_IQK_A ; 
 int /*<<< orphan*/  RF6052_REG_RCK_OS ; 
 int /*<<< orphan*/  RF6052_REG_TXPA_G1 ; 
 int /*<<< orphan*/  RF6052_REG_TXPA_G2 ; 
 int /*<<< orphan*/  RF6052_REG_UNKNOWN_55 ; 
 int /*<<< orphan*/  RF6052_REG_UNKNOWN_DF ; 
 int /*<<< orphan*/  RF6052_REG_WE_LUT ; 
 int /*<<< orphan*/  RF_A ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct rtl8xxxu_priv *priv)
{
	u32 reg_ea4, reg_eac, reg_e94, reg_e9c, path_sel, val32;
	int result = 0;

	path_sel = FUNC2(priv, REG_S0S1_PATH_SWITCH);

	/*
	 * Leave IQK mode
	 */
	val32 = FUNC2(priv, REG_FPGA0_IQK);
	val32 &= 0x000000ff;
	FUNC4(priv, REG_FPGA0_IQK, val32);

	/*
	 * Enable path A PA in TX IQK mode
	 */
	val32 = FUNC3(priv, RF_A, RF6052_REG_WE_LUT);
	val32 |= 0x80000;
	FUNC5(priv, RF_A, RF6052_REG_WE_LUT, val32);
	FUNC5(priv, RF_A, RF6052_REG_RCK_OS, 0x30000);
	FUNC5(priv, RF_A, RF6052_REG_TXPA_G1, 0x0001f);
	FUNC5(priv, RF_A, RF6052_REG_TXPA_G2, 0xf7fb7);

	/*
	 * Tx IQK setting
	 */
	FUNC4(priv, REG_TX_IQK, 0x01007c00);
	FUNC4(priv, REG_RX_IQK, 0x01004800);

	/* path-A IQK setting */
	FUNC4(priv, REG_TX_IQK_TONE_A, 0x18008c1c);
	FUNC4(priv, REG_RX_IQK_TONE_A, 0x38008c1c);
	FUNC4(priv, REG_TX_IQK_TONE_B, 0x38008c1c);
	FUNC4(priv, REG_RX_IQK_TONE_B, 0x38008c1c);

	FUNC4(priv, REG_TX_IQK_PI_A, 0x82160ff0);
	FUNC4(priv, REG_RX_IQK_PI_A, 0x28110000);
	FUNC4(priv, REG_TX_IQK_PI_B, 0x82110000);
	FUNC4(priv, REG_RX_IQK_PI_B, 0x28110000);

	/* LO calibration setting */
	FUNC4(priv, REG_IQK_AGC_RSP, 0x0046a911);

	/*
	 * Enter IQK mode
	 */
	val32 = FUNC2(priv, REG_FPGA0_IQK);
	val32 &= 0x000000ff;
	val32 |= 0x80800000;
	FUNC4(priv, REG_FPGA0_IQK, val32);

	/*
	 * The vendor driver indicates the USB module is always using
	 * S0S1 path 1 for the 8723bu. This may be different for 8192eu
	 */
	if (priv->rf_paths > 1)
		FUNC4(priv, REG_S0S1_PATH_SWITCH, 0x00000000);
	else
		FUNC4(priv, REG_S0S1_PATH_SWITCH, 0x00000280);

	/*
	 * Bit 12 seems to be BT_GRANT, and is only found in the 8723bu.
	 * No trace of this in the 8192eu or 8188eu vendor drivers.
	 */
	FUNC4(priv, REG_BT_CONTROL_8723BU, 0x00000800);

	/* One shot, path A LOK & IQK */
	FUNC4(priv, REG_IQK_AGC_PTS, 0xf9000000);
	FUNC4(priv, REG_IQK_AGC_PTS, 0xf8000000);

	FUNC1(1);

	/* Restore Ant Path */
	FUNC4(priv, REG_S0S1_PATH_SWITCH, path_sel);
#ifdef RTL8723BU_BT
	/* GNT_BT = 1 */
	rtl8xxxu_write32(priv, REG_BT_CONTROL_8723BU, 0x00001800);
#endif

	/*
	 * Leave IQK mode
	 */
	val32 = FUNC2(priv, REG_FPGA0_IQK);
	val32 &= 0x000000ff;
	FUNC4(priv, REG_FPGA0_IQK, val32);

	/* Check failed */
	reg_eac = FUNC2(priv, REG_RX_POWER_AFTER_IQK_A_2);
	reg_e94 = FUNC2(priv, REG_TX_POWER_BEFORE_IQK_A);
	reg_e9c = FUNC2(priv, REG_TX_POWER_AFTER_IQK_A);

	val32 = (reg_e9c >> 16) & 0x3ff;
	if (val32 & 0x200)
		val32 = 0x400 - val32;

	if (!(reg_eac & FUNC0(28)) &&
	    ((reg_e94 & 0x03ff0000) != 0x01420000) &&
	    ((reg_e9c & 0x03ff0000) != 0x00420000) &&
	    ((reg_e94 & 0x03ff0000)  < 0x01100000) &&
	    ((reg_e94 & 0x03ff0000)  > 0x00f00000) &&
	    val32 < 0xf)
		result |= 0x01;
	else	/* If TX not OK, ignore RX */
		goto out;

	val32 = 0x80007c00 | (reg_e94 &0x3ff0000) |
		((reg_e9c & 0x3ff0000) >> 16);
	FUNC4(priv, REG_TX_IQK, val32);

	/*
	 * Modify RX IQK mode
	 */
	val32 = FUNC2(priv, REG_FPGA0_IQK);
	val32 &= 0x000000ff;
	FUNC4(priv, REG_FPGA0_IQK, val32);
	val32 = FUNC3(priv, RF_A, RF6052_REG_WE_LUT);
	val32 |= 0x80000;
	FUNC5(priv, RF_A, RF6052_REG_WE_LUT, val32);
	FUNC5(priv, RF_A, RF6052_REG_RCK_OS, 0x30000);
	FUNC5(priv, RF_A, RF6052_REG_TXPA_G1, 0x0001f);
	FUNC5(priv, RF_A, RF6052_REG_TXPA_G2, 0xf7d77);

	/*
	 * PA, PAD setting
	 */
	FUNC5(priv, RF_A, RF6052_REG_UNKNOWN_DF, 0xf80);
	FUNC5(priv, RF_A, RF6052_REG_UNKNOWN_55, 0x4021f);

	/*
	 * RX IQK setting
	 */
	FUNC4(priv, REG_RX_IQK, 0x01004800);

	/* path-A IQK setting */
	FUNC4(priv, REG_TX_IQK_TONE_A, 0x38008c1c);
	FUNC4(priv, REG_RX_IQK_TONE_A, 0x18008c1c);
	FUNC4(priv, REG_TX_IQK_TONE_B, 0x38008c1c);
	FUNC4(priv, REG_RX_IQK_TONE_B, 0x38008c1c);

	FUNC4(priv, REG_TX_IQK_PI_A, 0x82110000);
	FUNC4(priv, REG_RX_IQK_PI_A, 0x2816001f);
	FUNC4(priv, REG_TX_IQK_PI_B, 0x82110000);
	FUNC4(priv, REG_RX_IQK_PI_B, 0x28110000);

	/* LO calibration setting */
	FUNC4(priv, REG_IQK_AGC_RSP, 0x0046a8d1);

	/*
	 * Enter IQK mode
	 */
	val32 = FUNC2(priv, REG_FPGA0_IQK);
	val32 &= 0x000000ff;
	val32 |= 0x80800000;
	FUNC4(priv, REG_FPGA0_IQK, val32);

	if (priv->rf_paths > 1)
		FUNC4(priv, REG_S0S1_PATH_SWITCH, 0x00000000);
	else
		FUNC4(priv, REG_S0S1_PATH_SWITCH, 0x00000280);

	/*
	 * Disable BT
	 */
	FUNC4(priv, REG_BT_CONTROL_8723BU, 0x00000800);

	/* One shot, path A LOK & IQK */
	FUNC4(priv, REG_IQK_AGC_PTS, 0xf9000000);
	FUNC4(priv, REG_IQK_AGC_PTS, 0xf8000000);

	FUNC1(1);

	/* Restore Ant Path */
	FUNC4(priv, REG_S0S1_PATH_SWITCH, path_sel);
#ifdef RTL8723BU_BT
	/* GNT_BT = 1 */
	rtl8xxxu_write32(priv, REG_BT_CONTROL_8723BU, 0x00001800);
#endif

	/*
	 * Leave IQK mode
	 */
	val32 = FUNC2(priv, REG_FPGA0_IQK);
	val32 &= 0x000000ff;
	FUNC4(priv, REG_FPGA0_IQK, val32);

	/* Check failed */
	reg_eac = FUNC2(priv, REG_RX_POWER_AFTER_IQK_A_2);
	reg_ea4 = FUNC2(priv, REG_RX_POWER_BEFORE_IQK_A_2);

	FUNC5(priv, RF_A, RF6052_REG_UNKNOWN_DF, 0x780);

	val32 = (reg_eac >> 16) & 0x3ff;
	if (val32 & 0x200)
		val32 = 0x400 - val32;

	if (!(reg_eac & FUNC0(27)) &&
	    ((reg_ea4 & 0x03ff0000) != 0x01320000) &&
	    ((reg_eac & 0x03ff0000) != 0x00360000) &&
	    ((reg_ea4 & 0x03ff0000)  < 0x01100000) &&
	    ((reg_ea4 & 0x03ff0000)  > 0x00f00000) &&
	    val32 < 0xf)
		result |= 0x02;
	else	/* If TX not OK, ignore RX */
		goto out;
out:
	return result;
}