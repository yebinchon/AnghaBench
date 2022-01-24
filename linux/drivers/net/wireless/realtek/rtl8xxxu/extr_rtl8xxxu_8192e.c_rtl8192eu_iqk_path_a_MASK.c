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
struct rtl8xxxu_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  REG_FPGA0_IQK ; 
 int /*<<< orphan*/  REG_IQK_AGC_PTS ; 
 int /*<<< orphan*/  REG_IQK_AGC_RSP ; 
 int /*<<< orphan*/  REG_RX_IQK_PI_A ; 
 int /*<<< orphan*/  REG_RX_IQK_TONE_A ; 
 int /*<<< orphan*/  REG_RX_IQK_TONE_B ; 
 int /*<<< orphan*/  REG_RX_POWER_AFTER_IQK_A_2 ; 
 int /*<<< orphan*/  REG_TX_IQK_PI_A ; 
 int /*<<< orphan*/  REG_TX_IQK_TONE_A ; 
 int /*<<< orphan*/  REG_TX_IQK_TONE_B ; 
 int /*<<< orphan*/  REG_TX_POWER_AFTER_IQK_A ; 
 int /*<<< orphan*/  REG_TX_POWER_BEFORE_IQK_A ; 
 int /*<<< orphan*/  RF6052_REG_UNKNOWN_DF ; 
 int /*<<< orphan*/  RF_A ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct rtl8xxxu_priv *priv)
{
	u32 reg_eac, reg_e94, reg_e9c;
	int result = 0;

	/*
	 * TX IQK
	 * PA/PAD controlled by 0x0
	 */
	FUNC3(priv, REG_FPGA0_IQK, 0x00000000);
	FUNC4(priv, RF_A, RF6052_REG_UNKNOWN_DF, 0x00180);
	FUNC3(priv, REG_FPGA0_IQK, 0x80800000);

	/* Path A IQK setting */
	FUNC3(priv, REG_TX_IQK_TONE_A, 0x18008c1c);
	FUNC3(priv, REG_RX_IQK_TONE_A, 0x38008c1c);
	FUNC3(priv, REG_TX_IQK_TONE_B, 0x38008c1c);
	FUNC3(priv, REG_RX_IQK_TONE_B, 0x38008c1c);

	FUNC3(priv, REG_TX_IQK_PI_A, 0x82140303);
	FUNC3(priv, REG_RX_IQK_PI_A, 0x68160000);

	/* LO calibration setting */
	FUNC3(priv, REG_IQK_AGC_RSP, 0x00462911);

	/* One shot, path A LOK & IQK */
	FUNC3(priv, REG_IQK_AGC_PTS, 0xf9000000);
	FUNC3(priv, REG_IQK_AGC_PTS, 0xf8000000);

	FUNC1(10);

	/* Check failed */
	reg_eac = FUNC2(priv, REG_RX_POWER_AFTER_IQK_A_2);
	reg_e94 = FUNC2(priv, REG_TX_POWER_BEFORE_IQK_A);
	reg_e9c = FUNC2(priv, REG_TX_POWER_AFTER_IQK_A);

	if (!(reg_eac & FUNC0(28)) &&
	    ((reg_e94 & 0x03ff0000) != 0x01420000) &&
	    ((reg_e9c & 0x03ff0000) != 0x00420000))
		result |= 0x01;

	return result;
}