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
 struct rtl_mac* FUNC1 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	struct rtl_mac *mac = FUNC1(FUNC2(hw));
	u16 bcn_interval = mac->beacon_interval;

	FUNC0(rtlpriv, COMP_BEACON, DBG_DMESG,
		 "beacon_interval:%d\n", bcn_interval);
	FUNC3(rtlpriv, REG_BCN_INTERVAL, bcn_interval);
}