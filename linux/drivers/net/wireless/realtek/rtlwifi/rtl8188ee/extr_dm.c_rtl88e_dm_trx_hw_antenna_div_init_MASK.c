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
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  DM_REG_ANTDIV_PARA1_11N ; 
 int /*<<< orphan*/  DM_REG_ANTSEL_PIN_11N ; 
 int /*<<< orphan*/  DM_REG_ANT_MAPPING1_11N ; 
 int /*<<< orphan*/  DM_REG_BB_PWR_SAV4_11N ; 
 int /*<<< orphan*/  DM_REG_CCK_ANTDIV_PARA2_11N ; 
 int /*<<< orphan*/  DM_REG_LNA_SWITCH_11N ; 
 int /*<<< orphan*/  DM_REG_PIN_CTRL_11N ; 
 int /*<<< orphan*/  DM_REG_RX_ANT_CTRL_11N ; 
 int /*<<< orphan*/  DM_REG_TX_ANT_CTRL_11N ; 
 int /*<<< orphan*/  MAIN_ANT ; 
 int MASKDWORD ; 
 int MASKLWORD ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw)
{
	u32  value32;

	/*MAC Setting*/
	value32 = FUNC2(hw, DM_REG_ANTSEL_PIN_11N, MASKDWORD);
	FUNC3(hw, DM_REG_ANTSEL_PIN_11N, MASKDWORD,
		      value32 | (FUNC0(23) | FUNC0(25)));
	/*Pin Setting*/
	FUNC3(hw, DM_REG_PIN_CTRL_11N, FUNC0(9) | FUNC0(8), 0);
	FUNC3(hw, DM_REG_RX_ANT_CTRL_11N, FUNC0(10), 0);
	FUNC3(hw, DM_REG_LNA_SWITCH_11N, FUNC0(22), 0);
	FUNC3(hw, DM_REG_LNA_SWITCH_11N, FUNC0(31), 1);
	/*OFDM Setting*/
	FUNC3(hw, DM_REG_ANTDIV_PARA1_11N, MASKDWORD, 0x000000a0);
	/*CCK Setting*/
	FUNC3(hw, DM_REG_BB_PWR_SAV4_11N, FUNC0(7), 1);
	FUNC3(hw, DM_REG_CCK_ANTDIV_PARA2_11N, FUNC0(4), 1);
	/*TX Setting*/
	FUNC3(hw, DM_REG_TX_ANT_CTRL_11N, FUNC0(21), 0);
	FUNC1(hw, MAIN_ANT);
	FUNC3(hw, DM_REG_ANT_MAPPING1_11N, MASKLWORD, 0x0201);
}