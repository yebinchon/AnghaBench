#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wiphy {int /*<<< orphan*/ * bands; } ;
struct TYPE_2__ {int iftype; } ;
struct qtnf_vif {int /*<<< orphan*/  mac; TYPE_1__ wdev; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;

/* Variables and functions */
 int NUM_NL80211_BANDS ; 
 int /*<<< orphan*/  QLINK_CMD_CHANGE_INTF ; 
 struct wiphy* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct qtnf_vif*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(struct qtnf_vif *vif,
				   enum nl80211_iftype iftype,
				   int use4addr,
				   u8 *mac_addr)
{
	int ret;

	ret = FUNC2(vif, iftype, use4addr, mac_addr,
					    QLINK_CMD_CHANGE_INTF);

	/* Regulatory settings may be different for different interface types */
	if (ret == 0 && vif->wdev.iftype != iftype) {
		enum nl80211_band band;
		struct wiphy *wiphy = FUNC0(vif->mac);

		for (band = 0; band < NUM_NL80211_BANDS; ++band) {
			if (!wiphy->bands[band])
				continue;

			FUNC1(vif->mac, wiphy->bands[band]);
		}
	}

	return ret;
}