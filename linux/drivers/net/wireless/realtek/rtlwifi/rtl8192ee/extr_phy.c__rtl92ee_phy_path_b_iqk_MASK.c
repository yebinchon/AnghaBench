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
 int /*<<< orphan*/  RF90_PATH_B ; 
 int RFPGA0_IQK ; 
 int /*<<< orphan*/  RFREG_OFFSET_MASK ; 
 int RIQK_AGC_PTS ; 
 int RIQK_AGC_RSP ; 
 int RRX_IQK_PI_B ; 
 int RRX_IQK_TONE_A ; 
 int RRX_IQK_TONE_B ; 
 int RTX_IQK_PI_B ; 
 int RTX_IQK_TONE_A ; 
 int RTX_IQK_TONE_B ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ieee80211_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u8 FUNC5(struct ieee80211_hw *hw)
{
	u32 reg_eac, reg_eb4, reg_ebc;
	u8 result = 0x00;

	/* PA/PAD controlled by 0x0 */
	FUNC3(hw, RFPGA0_IQK, MASKDWORD, 0x00000000);
	FUNC4(hw, RF90_PATH_B, 0xdf, RFREG_OFFSET_MASK, 0x180);
	FUNC3(hw, RFPGA0_IQK, MASKDWORD, 0x80800000);

	FUNC3(hw, 0xe28, MASKDWORD, 0x00000000);
	FUNC3(hw, 0xe28, MASKDWORD, 0x80800000);

	FUNC3(hw, RTX_IQK_TONE_A, MASKDWORD, 0x38008c1c);
	FUNC3(hw, RRX_IQK_TONE_A, MASKDWORD, 0x38008c1c);
	FUNC3(hw, RTX_IQK_TONE_B, MASKDWORD, 0x18008c1c);
	FUNC3(hw, RRX_IQK_TONE_B, MASKDWORD, 0x38008c1c);

	FUNC3(hw, RTX_IQK_PI_B, MASKDWORD, 0x821403e2);
	FUNC3(hw, RRX_IQK_PI_B, MASKDWORD, 0x68160000);

	/* LO calibration setting */
	FUNC3(hw, RIQK_AGC_RSP, MASKDWORD, 0x00462911);

	/*One shot, path B LOK & IQK*/
	FUNC3(hw, RIQK_AGC_PTS, MASKDWORD, 0xfa000000);
	FUNC3(hw, RIQK_AGC_PTS, MASKDWORD, 0xf8000000);

	FUNC1(IQK_DELAY_TIME);

	reg_eac = FUNC2(hw, 0xeac, MASKDWORD);
	reg_eb4 = FUNC2(hw, 0xeb4, MASKDWORD);
	reg_ebc = FUNC2(hw, 0xebc, MASKDWORD);

	if (!(reg_eac & FUNC0(31)) &&
	    (((reg_eb4 & 0x03FF0000) >> 16) != 0x142) &&
	    (((reg_ebc & 0x03FF0000) >> 16) != 0x42))
		result |= 0x01;
	else
		return result;

	return result;
}