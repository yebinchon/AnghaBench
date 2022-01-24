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
struct dig_t {int /*<<< orphan*/  cursta_cstate; int /*<<< orphan*/  presta_cstate; int /*<<< orphan*/  curmultista_cstate; } ;
struct rtl_priv {struct dig_t dm_digtable; } ;
struct rtl_mac {scalar_t__ link_state; scalar_t__ act_scanning; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIG_MULTISTA_DISCONNECT ; 
 int /*<<< orphan*/  DIG_STA_CONNECT ; 
 int /*<<< orphan*/  DIG_STA_DISCONNECT ; 
 scalar_t__ MAC80211_LINKED ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 struct rtl_mac* FUNC3 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC4(hw);
	struct dig_t *dm_digtable = &rtlpriv->dm_digtable;
	struct rtl_mac *mac = FUNC3(FUNC4(hw));

	if (mac->act_scanning)
		return;

	if (mac->link_state >= MAC80211_LINKED)
		dm_digtable->cursta_cstate = DIG_STA_CONNECT;
	else
		dm_digtable->cursta_cstate = DIG_STA_DISCONNECT;

	dm_digtable->curmultista_cstate = DIG_MULTISTA_DISCONNECT;

	FUNC2(hw);
	FUNC1(hw);
	FUNC0(hw);

	dm_digtable->presta_cstate = dm_digtable->cursta_cstate;
}