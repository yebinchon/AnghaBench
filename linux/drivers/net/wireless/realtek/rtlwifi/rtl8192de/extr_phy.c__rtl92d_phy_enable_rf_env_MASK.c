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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct rtl_phy {struct bb_reg_def* phyreg_def; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
struct bb_reg_def {int /*<<< orphan*/  rfhssi_para2; int /*<<< orphan*/  rfintfo; int /*<<< orphan*/  rfintfe; int /*<<< orphan*/  rfintfs; } ;

/* Variables and functions */
 int B3WIREADDRESSLENGTH ; 
 int B3WIREDATALENGTH ; 
 int BRFSI_RFENV ; 
 int /*<<< orphan*/  COMP_RF ; 
 int /*<<< orphan*/  DBG_LOUD ; 
#define  RF90_PATH_A 131 
#define  RF90_PATH_B 130 
#define  RF90_PATH_C 129 
#define  RF90_PATH_D 128 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ ,int) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw,
	u8 rfpath, u32 *pu4_regval)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	struct rtl_phy *rtlphy = &(rtlpriv->phy);
	struct bb_reg_def *pphyreg = &rtlphy->phyreg_def[rfpath];

	FUNC0(rtlpriv, COMP_RF, DBG_LOUD, "====>\n");
	/*----Store original RFENV control type----*/
	switch (rfpath) {
	case RF90_PATH_A:
	case RF90_PATH_C:
		*pu4_regval = FUNC1(hw, pphyreg->rfintfs, BRFSI_RFENV);
		break;
	case RF90_PATH_B:
	case RF90_PATH_D:
		*pu4_regval =
		    FUNC1(hw, pphyreg->rfintfs, BRFSI_RFENV << 16);
		break;
	}
	/*----Set RF_ENV enable----*/
	FUNC3(hw, pphyreg->rfintfe, BRFSI_RFENV << 16, 0x1);
	FUNC4(1);
	/*----Set RF_ENV output high----*/
	FUNC3(hw, pphyreg->rfintfo, BRFSI_RFENV, 0x1);
	FUNC4(1);
	/* Set bit number of Address and Data for RF register */
	/* Set 1 to 4 bits for 8255 */
	FUNC3(hw, pphyreg->rfhssi_para2, B3WIREADDRESSLENGTH, 0x0);
	FUNC4(1);
	/*Set 0 to 12 bits for 8255 */
	FUNC3(hw, pphyreg->rfhssi_para2, B3WIREDATALENGTH, 0x0);
	FUNC4(1);
	FUNC0(rtlpriv, COMP_RF, DBG_LOUD, "<====\n");
}