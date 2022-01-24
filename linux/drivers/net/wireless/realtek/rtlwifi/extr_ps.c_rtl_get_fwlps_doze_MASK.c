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
struct rtl_ps_ctl {scalar_t__ last_delaylps_stamp_jiffies; } ;
struct rtl_priv {int dummy; } ;
struct rtl_mac {scalar_t__ link_state; scalar_t__ opmode; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_POWER ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 scalar_t__ MAC80211_LINKED ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ jiffies ; 
 int FUNC1 (scalar_t__) ; 
 struct rtl_mac* FUNC2 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC4 (struct rtl_priv*) ; 

__attribute__((used)) static bool FUNC5(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_mac *mac = FUNC2(FUNC3(hw));
	struct rtl_ps_ctl *ppsc = FUNC4(FUNC3(hw));
	u32 ps_timediff;

	ps_timediff = FUNC1(jiffies -
				       ppsc->last_delaylps_stamp_jiffies);

	if (ps_timediff < 2000) {
		FUNC0(rtlpriv, COMP_POWER, DBG_LOUD,
			 "Delay enter Fw LPS for DHCP, ARP, or EAPOL exchanging state\n");
		return false;
	}

	if (mac->link_state != MAC80211_LINKED)
		return false;

	if (mac->opmode == NL80211_IFTYPE_ADHOC)
		return false;

	return true;
}