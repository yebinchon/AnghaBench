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
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u8 FUNC6(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC4(hw);
	u32 regeac, regeb4, regebc, regec4, regecc;
	u8 result = 0;

	FUNC1(rtlpriv, FINIT, INIT_IQK,  "Path B IQK!\n");
	/* One shot, path B LOK & IQK */
	FUNC1(rtlpriv, FINIT, INIT_IQK,  "One shot, path A LOK & IQK!\n");
	FUNC5(hw, 0xe60, MASKDWORD, 0x00000002);
	FUNC5(hw, 0xe60, MASKDWORD, 0x00000000);
	/* delay x ms  */
	FUNC1(rtlpriv, FINIT, INIT_IQK,
		"Delay %d ms for One shot, path B LOK & IQK\n", IQK_DELAY_TIME);
	FUNC2(IQK_DELAY_TIME);
	/* Check failed */
	regeac = FUNC3(hw, 0xeac, MASKDWORD);
	FUNC1(rtlpriv, FINIT, INIT_IQK,  "0xeac = 0x%x\n", regeac);
	regeb4 = FUNC3(hw, 0xeb4, MASKDWORD);
	FUNC1(rtlpriv, FINIT, INIT_IQK,  "0xeb4 = 0x%x\n", regeb4);
	regebc = FUNC3(hw, 0xebc, MASKDWORD);
	FUNC1(rtlpriv, FINIT, INIT_IQK,  "0xebc = 0x%x\n", regebc);
	regec4 = FUNC3(hw, 0xec4, MASKDWORD);
	FUNC1(rtlpriv, FINIT, INIT_IQK,  "0xec4 = 0x%x\n", regec4);
	regecc = FUNC3(hw, 0xecc, MASKDWORD);
	FUNC1(rtlpriv, FINIT, INIT_IQK,  "0xecc = 0x%x\n", regecc);
	if (!(regeac & FUNC0(31)) && (((regeb4 & 0x03FF0000) >> 16) != 0x142) &&
	    (((regebc & 0x03FF0000) >> 16) != 0x42))
		result |= 0x01;
	else
		return result;
	if (!(regeac & FUNC0(30)) && (((regec4 & 0x03FF0000) >> 16) != 0x132) &&
	    (((regecc & 0x03FF0000) >> 16) != 0x36))
		result |= 0x02;
	else
		FUNC1(rtlpriv, FINIT, INIT_IQK,  "Path B Rx IQK fail!!\n");
	return result;
}