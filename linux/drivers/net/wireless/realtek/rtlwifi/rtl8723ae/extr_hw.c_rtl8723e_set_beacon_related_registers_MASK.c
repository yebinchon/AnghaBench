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
struct rtl_mac {int beacon_interval; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_ATIMWND ; 
 int /*<<< orphan*/  REG_BCNTCFG ; 
 int /*<<< orphan*/  REG_BCN_INTERVAL ; 
 int REG_RXTSF_OFFSET_CCK ; 
 int REG_RXTSF_OFFSET_OFDM ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 struct rtl_mac* FUNC2 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct ieee80211_hw *hw)
{

	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_mac *mac = FUNC2(FUNC3(hw));
	u16 bcn_interval, atim_window;

	bcn_interval = mac->beacon_interval;
	atim_window = 2;	/*FIX MERGE */
	FUNC0(hw);
	FUNC5(rtlpriv, REG_ATIMWND, atim_window);
	FUNC5(rtlpriv, REG_BCN_INTERVAL, bcn_interval);
	FUNC5(rtlpriv, REG_BCNTCFG, 0x660f);
	FUNC4(rtlpriv, REG_RXTSF_OFFSET_CCK, 0x18);
	FUNC4(rtlpriv, REG_RXTSF_OFFSET_OFDM, 0x18);
	FUNC4(rtlpriv, 0x606, 0x30);
	FUNC1(hw);
}