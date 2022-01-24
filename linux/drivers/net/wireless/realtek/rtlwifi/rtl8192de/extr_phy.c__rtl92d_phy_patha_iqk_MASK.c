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
struct rtl_priv {int dummy; } ;
struct rtl_hal {scalar_t__ interfaceindex; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FINIT ; 
 int /*<<< orphan*/  INIT_IQK ; 
 int /*<<< orphan*/  IQK_DELAY_TIME ; 
 int /*<<< orphan*/  MASKDWORD ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ieee80211_hw*,int,int /*<<< orphan*/ ) ; 
 struct rtl_hal* FUNC4 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u8 FUNC7(struct ieee80211_hw *hw, bool configpathb)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);
	struct rtl_hal *rtlhal = FUNC4(FUNC5(hw));
	u32 regeac, rege94, rege9c, regea4;
	u8 result = 0;

	FUNC1(rtlpriv, FINIT, INIT_IQK,  "Path A IQK!\n");
	/* path-A IQK setting */
	FUNC1(rtlpriv, FINIT, INIT_IQK,  "Path-A IQK setting!\n");
	if (rtlhal->interfaceindex == 0) {
		FUNC6(hw, 0xe30, MASKDWORD, 0x10008c1f);
		FUNC6(hw, 0xe34, MASKDWORD, 0x10008c1f);
	} else {
		FUNC6(hw, 0xe30, MASKDWORD, 0x10008c22);
		FUNC6(hw, 0xe34, MASKDWORD, 0x10008c22);
	}
	FUNC6(hw, 0xe38, MASKDWORD, 0x82140102);
	FUNC6(hw, 0xe3c, MASKDWORD, 0x28160206);
	/* path-B IQK setting */
	if (configpathb) {
		FUNC6(hw, 0xe50, MASKDWORD, 0x10008c22);
		FUNC6(hw, 0xe54, MASKDWORD, 0x10008c22);
		FUNC6(hw, 0xe58, MASKDWORD, 0x82140102);
		FUNC6(hw, 0xe5c, MASKDWORD, 0x28160206);
	}
	/* LO calibration setting */
	FUNC1(rtlpriv, FINIT, INIT_IQK,  "LO calibration setting!\n");
	FUNC6(hw, 0xe4c, MASKDWORD, 0x00462911);
	/* One shot, path A LOK & IQK */
	FUNC1(rtlpriv, FINIT, INIT_IQK,  "One shot, path A LOK & IQK!\n");
	FUNC6(hw, 0xe48, MASKDWORD, 0xf9000000);
	FUNC6(hw, 0xe48, MASKDWORD, 0xf8000000);
	/* delay x ms */
	FUNC1(rtlpriv, FINIT, INIT_IQK,
		"Delay %d ms for One shot, path A LOK & IQK\n",
		IQK_DELAY_TIME);
	FUNC2(IQK_DELAY_TIME);
	/* Check failed */
	regeac = FUNC3(hw, 0xeac, MASKDWORD);
	FUNC1(rtlpriv, FINIT, INIT_IQK,  "0xeac = 0x%x\n", regeac);
	rege94 = FUNC3(hw, 0xe94, MASKDWORD);
	FUNC1(rtlpriv, FINIT, INIT_IQK,  "0xe94 = 0x%x\n", rege94);
	rege9c = FUNC3(hw, 0xe9c, MASKDWORD);
	FUNC1(rtlpriv, FINIT, INIT_IQK,  "0xe9c = 0x%x\n", rege9c);
	regea4 = FUNC3(hw, 0xea4, MASKDWORD);
	FUNC1(rtlpriv, FINIT, INIT_IQK,  "0xea4 = 0x%x\n", regea4);
	if (!(regeac & FUNC0(28)) && (((rege94 & 0x03FF0000) >> 16) != 0x142) &&
	    (((rege9c & 0x03FF0000) >> 16) != 0x42))
		result |= 0x01;
	else			/* if Tx not OK, ignore Rx */
		return result;
	/* if Tx is OK, check whether Rx is OK */
	if (!(regeac & FUNC0(27)) && (((regea4 & 0x03FF0000) >> 16) != 0x132) &&
	    (((regeac & 0x03FF0000) >> 16) != 0x36))
		result |= 0x02;
	else
		FUNC1(rtlpriv, FINIT, INIT_IQK,  "Path A Rx IQK fail!!\n");
	return result;
}