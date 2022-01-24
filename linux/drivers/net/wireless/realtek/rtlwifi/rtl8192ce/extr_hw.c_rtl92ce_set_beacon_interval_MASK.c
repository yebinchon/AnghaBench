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
typedef  int /*<<< orphan*/  u16 ;
struct rtl_priv {int dummy; } ;
struct rtl_mac {int /*<<< orphan*/  beacon_interval; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_BEACON ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  REG_BCN_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 struct rtl_mac* FUNC3 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC4(hw);
	struct rtl_mac *mac = FUNC3(FUNC4(hw));
	u16 bcn_interval = mac->beacon_interval;

	FUNC0(rtlpriv, COMP_BEACON, DBG_DMESG,
		 "beacon_interval:%d\n", bcn_interval);
	FUNC1(hw);
	FUNC5(rtlpriv, REG_BCN_INTERVAL, bcn_interval);
	FUNC2(hw);
}