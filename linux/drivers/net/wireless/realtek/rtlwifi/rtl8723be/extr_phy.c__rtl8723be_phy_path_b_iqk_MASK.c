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
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  IQK_DELAY_TIME ; 
 int /*<<< orphan*/  MASKDWORD ; 
 int /*<<< orphan*/  RF90_PATH_A ; 
 int RFPGA0_IQK ; 
 int /*<<< orphan*/  RFREG_OFFSET_MASK ; 
 int RIQK_AGC_PTS ; 
 int RIQK_AGC_RSP ; 
 int RRX_IQK ; 
 int RRX_IQK_PI_A ; 
 int RRX_IQK_PI_B ; 
 int RRX_IQK_TONE_A ; 
 int RRX_IQK_TONE_B ; 
 int /*<<< orphan*/  RRX_POWER_AFTER_IQK_A_2 ; 
 int RTX_IQK ; 
 int RTX_IQK_PI_A ; 
 int RTX_IQK_PI_B ; 
 int RTX_IQK_TONE_A ; 
 int RTX_IQK_TONE_B ; 
 int /*<<< orphan*/  RTX_POWER_AFTER_IQK_A ; 
 int /*<<< orphan*/  RTX_POWER_BEFORE_IQK_A ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u8 FUNC5(struct ieee80211_hw *hw)
{
	u32 reg_eac, reg_e94, reg_e9c, tmp;
	u8 result = 0x00;

	/* leave IQK mode */
	FUNC3(hw, RFPGA0_IQK, MASKDWORD, 0x00000000);
	/* switch to path B */
	FUNC3(hw, 0x948, MASKDWORD, 0x00000280);

	/* enable path B PA in TXIQK mode */
	FUNC4(hw, RF90_PATH_A, 0xed, RFREG_OFFSET_MASK, 0x00020);
	FUNC4(hw, RF90_PATH_A, 0x43, RFREG_OFFSET_MASK, 0x40fc1);

	/* 1 Tx IQK */
	/* IQK setting */
	FUNC3(hw, RTX_IQK, MASKDWORD, 0x01007c00);
	FUNC3(hw, RRX_IQK, MASKDWORD, 0x01004800);
	/* path-A IQK setting */
	FUNC3(hw, RTX_IQK_TONE_A, MASKDWORD, 0x18008c1c);
	FUNC3(hw, RRX_IQK_TONE_A, MASKDWORD, 0x38008c1c);
	FUNC3(hw, RTX_IQK_TONE_B, MASKDWORD, 0x38008c1c);
	FUNC3(hw, RRX_IQK_TONE_B, MASKDWORD, 0x38008c1c);

	FUNC3(hw, RTX_IQK_PI_A, MASKDWORD, 0x821403ea);
	FUNC3(hw, RRX_IQK_PI_A, MASKDWORD, 0x28110000);
	FUNC3(hw, RTX_IQK_PI_B, MASKDWORD, 0x82110000);
	FUNC3(hw, RRX_IQK_PI_B, MASKDWORD, 0x28110000);

	/* LO calibration setting */
	FUNC3(hw, RIQK_AGC_RSP, MASKDWORD, 0x00462911);

	/* enter IQK mode */
	FUNC3(hw, RFPGA0_IQK, MASKDWORD, 0x80800000);

	/* One shot, path B LOK & IQK */
	FUNC3(hw, RIQK_AGC_PTS, MASKDWORD, 0xf9000000);
	FUNC3(hw, RIQK_AGC_PTS, MASKDWORD, 0xf8000000);

	FUNC1(IQK_DELAY_TIME);

	/* leave IQK mode */
	FUNC3(hw, RFPGA0_IQK, MASKDWORD, 0x00000000);

	/* Check failed */
	reg_eac = FUNC2(hw, RRX_POWER_AFTER_IQK_A_2, MASKDWORD);
	reg_e94 = FUNC2(hw, RTX_POWER_BEFORE_IQK_A, MASKDWORD);
	reg_e9c = FUNC2(hw, RTX_POWER_AFTER_IQK_A, MASKDWORD);

	if (!(reg_eac & FUNC0(28)) &&
	    (((reg_e94 & 0x03FF0000) >> 16) != 0x142) &&
	    (((reg_e9c & 0x03FF0000) >> 16) != 0x42))
		result |= 0x01;
	else
		return result;

	/* Allen 20131125 */
	tmp = (reg_e9c & 0x03FF0000) >> 16;
	if ((tmp & 0x200) > 0)
		tmp = 0x400 - tmp;

	if (!(reg_eac & FUNC0(28)) &&
	    (((reg_e94 & 0x03FF0000) >> 16) < 0x110) &&
	    (((reg_e94 & 0x03FF0000) >> 16) > 0xf0) &&
	    (tmp < 0xf))
		result |= 0x01;
	else
		return result;

	return result;
}