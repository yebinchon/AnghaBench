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
struct wl1271 {int /*<<< orphan*/  flags; } ;
struct ieee80211_vif {int type; int p2p; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 int /*<<< orphan*/  WL1271_FLAG_VIF_CHANGE_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ieee80211_hw*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,struct ieee80211_vif*) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *hw,
				      struct ieee80211_vif *vif,
				      enum nl80211_iftype new_type, bool p2p)
{
	struct wl1271 *wl = hw->priv;
	int ret;

	FUNC1(WL1271_FLAG_VIF_CHANGE_IN_PROGRESS, &wl->flags);
	FUNC3(hw, vif);

	vif->type = new_type;
	vif->p2p = p2p;
	ret = FUNC2(hw, vif);

	FUNC0(WL1271_FLAG_VIF_CHANGE_IN_PROGRESS, &wl->flags);
	return ret;
}