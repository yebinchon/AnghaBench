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
struct rtl_priv {int dummy; } ;
struct ieee80211_vif {int type; int p2p; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_MAC80211 ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct ieee80211_hw*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,struct ieee80211_vif*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *hw,
				   struct ieee80211_vif *vif,
				   enum nl80211_iftype new_type, bool p2p)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	int ret;

	FUNC2(hw, vif);

	vif->type = new_type;
	vif->p2p = p2p;
	ret = FUNC1(hw, vif);
	FUNC0(rtlpriv, COMP_MAC80211, DBG_LOUD,
		 "p2p  %x\n", p2p);
	return ret;
}