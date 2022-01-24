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
typedef  int u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int DIS_EDCA_CNT_DWN ; 
 int /*<<< orphan*/  REG_AGGR_BREAK_TIME ; 
 int /*<<< orphan*/  REG_ATIMWND ; 
 int /*<<< orphan*/  REG_BAR_MODE_CTRL ; 
 int /*<<< orphan*/  REG_BCNDMATIM ; 
 int /*<<< orphan*/  REG_EDCA_BE_PARAM ; 
 int /*<<< orphan*/  REG_EDCA_BK_PARAM ; 
 int /*<<< orphan*/  REG_EDCA_VI_PARAM ; 
 int /*<<< orphan*/  REG_EDCA_VO_PARAM ; 
 int /*<<< orphan*/  REG_NAV_PROT_LEN ; 
 int /*<<< orphan*/  REG_PIFS ; 
 int /*<<< orphan*/  REG_PROT_MODE_CTRL ; 
 int /*<<< orphan*/  REG_RD_CTRL ; 
 int /*<<< orphan*/  REG_SIFS_CCK ; 
 int /*<<< orphan*/  REG_SIFS_OFDM ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int,int) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int FUNC3 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

void FUNC7(struct ieee80211_hw *hw)
{
	u16 value16;
	struct rtl_priv *rtlpriv = FUNC2(hw);

	/* disable EDCCA count down, to reduce collison and retry */
	value16 = FUNC3(rtlpriv, REG_RD_CTRL);
	value16 |= DIS_EDCA_CNT_DWN;
	FUNC6(rtlpriv, REG_RD_CTRL, value16);
	/* Update SIFS timing.  ??????????
	 * pHalData->SifsTime = 0x0e0e0a0a; */
	FUNC0(hw, 0xa, 0xa);
	FUNC1(hw, 0xe, 0xe);
	/* Set CCK/OFDM SIFS to be 10us. */
	FUNC6(rtlpriv, REG_SIFS_CCK, 0x0a0a);
	FUNC6(rtlpriv, REG_SIFS_OFDM, 0x1010);
	FUNC6(rtlpriv, REG_PROT_MODE_CTRL, 0x0204);
	FUNC5(rtlpriv, REG_BAR_MODE_CTRL, 0x014004);
	/* TXOP */
	FUNC5(rtlpriv, REG_EDCA_BE_PARAM, 0x005EA42B);
	FUNC5(rtlpriv, REG_EDCA_BK_PARAM, 0x0000A44F);
	FUNC5(rtlpriv, REG_EDCA_VI_PARAM, 0x005EA324);
	FUNC5(rtlpriv, REG_EDCA_VO_PARAM, 0x002FA226);
	/* PIFS */
	FUNC4(rtlpriv, REG_PIFS, 0x1C);
	/* AGGR BREAK TIME Register */
	FUNC4(rtlpriv, REG_AGGR_BREAK_TIME, 0x16);
	FUNC6(rtlpriv, REG_NAV_PROT_LEN, 0x0040);
	FUNC4(rtlpriv, REG_BCNDMATIM, 0x02);
	FUNC4(rtlpriv, REG_ATIMWND, 0x02);
}