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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ieee80211_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u8 FUNC4(struct ieee80211_hw *hw)
{
	u32 reg_eac, reg_eb4, reg_ebc, reg_ec4, reg_ecc;
	u8 result = 0x00;

	FUNC3(hw, 0xe60, MASKDWORD, 0x00000002);
	FUNC3(hw, 0xe60, MASKDWORD, 0x00000000);
	FUNC1(IQK_DELAY_TIME);
	reg_eac = FUNC2(hw, 0xeac, MASKDWORD);
	reg_eb4 = FUNC2(hw, 0xeb4, MASKDWORD);
	reg_ebc = FUNC2(hw, 0xebc, MASKDWORD);
	reg_ec4 = FUNC2(hw, 0xec4, MASKDWORD);
	reg_ecc = FUNC2(hw, 0xecc, MASKDWORD);

	if (!(reg_eac & FUNC0(31)) &&
	    (((reg_eb4 & 0x03FF0000) >> 16) != 0x142) &&
	    (((reg_ebc & 0x03FF0000) >> 16) != 0x42))
		result |= 0x01;
	else
		return result;
	if (!(reg_eac & FUNC0(30)) &&
	    (((reg_ec4 & 0x03FF0000) >> 16) != 0x132) &&
	    (((reg_ecc & 0x03FF0000) >> 16) != 0x36))
		result |= 0x02;
	return result;
}