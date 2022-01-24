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
typedef  int u16 ;
struct rtl_priv {int dummy; } ;
struct rtl_pci {scalar_t__ reg_bcn_ctrl_val; } ;
struct rtl_mac {int beacon_interval; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  REG_ATIMWND ; 
 int /*<<< orphan*/  REG_BCNTCFG ; 
 int REG_BCN_CTRL ; 
 int /*<<< orphan*/  REG_BCN_INTERVAL ; 
 int REG_RXTSF_OFFSET_CCK ; 
 int REG_RXTSF_OFFSET_OFDM ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 struct rtl_mac* FUNC2 (struct rtl_priv*) ; 
 struct rtl_pci* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

void FUNC8(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);
	struct rtl_mac *mac = FUNC2(FUNC5(hw));
	struct rtl_pci *rtlpci = FUNC3(FUNC4(hw));
	u16 bcn_interval, atim_window;

	bcn_interval = mac->beacon_interval;
	atim_window = 2;	/*FIX MERGE */
	FUNC1(hw);
	FUNC7(rtlpriv, REG_ATIMWND, atim_window);
	FUNC7(rtlpriv, REG_BCN_INTERVAL, bcn_interval);
	FUNC7(rtlpriv, REG_BCNTCFG, 0x660f);
	FUNC6(rtlpriv, REG_RXTSF_OFFSET_CCK, 0x18);
	FUNC6(rtlpriv, REG_RXTSF_OFFSET_OFDM, 0x18);
	FUNC6(rtlpriv, 0x606, 0x30);
	rtlpci->reg_bcn_ctrl_val |= FUNC0(3);
	FUNC6(rtlpriv, REG_BCN_CTRL, (u8)rtlpci->reg_bcn_ctrl_val);
}