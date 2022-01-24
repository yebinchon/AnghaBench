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
struct zd_mac {scalar_t__ type; struct ieee80211_vif* vif; } ;
struct ieee80211_vif {int type; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  NL80211_IFTYPE_ADHOC 132 
#define  NL80211_IFTYPE_AP 131 
#define  NL80211_IFTYPE_MESH_POINT 130 
#define  NL80211_IFTYPE_MONITOR 129 
#define  NL80211_IFTYPE_STATION 128 
 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ; 
 int FUNC0 (struct zd_mac*) ; 
 struct zd_mac* FUNC1 (struct ieee80211_hw*) ; 

__attribute__((used)) static int FUNC2(struct ieee80211_hw *hw,
				struct ieee80211_vif *vif)
{
	struct zd_mac *mac = FUNC1(hw);

	/* using NL80211_IFTYPE_UNSPECIFIED to indicate no mode selected */
	if (mac->type != NL80211_IFTYPE_UNSPECIFIED)
		return -EOPNOTSUPP;

	switch (vif->type) {
	case NL80211_IFTYPE_MONITOR:
	case NL80211_IFTYPE_MESH_POINT:
	case NL80211_IFTYPE_STATION:
	case NL80211_IFTYPE_ADHOC:
	case NL80211_IFTYPE_AP:
		mac->type = vif->type;
		break;
	default:
		return -EOPNOTSUPP;
	}

	mac->vif = vif;

	return FUNC0(mac);
}