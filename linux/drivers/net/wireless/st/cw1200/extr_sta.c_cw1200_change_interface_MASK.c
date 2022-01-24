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
struct ieee80211_vif {int type; int p2p; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 int FUNC0 (struct ieee80211_hw*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int,int) ; 

int FUNC3(struct ieee80211_hw *dev,
			    struct ieee80211_vif *vif,
			    enum nl80211_iftype new_type,
			    bool p2p)
{
	int ret = 0;
	FUNC2("change_interface new: %d (%d), old: %d (%d)\n", new_type,
		 p2p, vif->type, vif->p2p);

	if (new_type != vif->type || vif->p2p != p2p) {
		FUNC1(dev, vif);
		vif->type = new_type;
		vif->p2p = p2p;
		ret = FUNC0(dev, vif);
	}

	return ret;
}