#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wiphy {TYPE_3__** bands; } ;
struct TYPE_4__ {TYPE_3__* wowlan; } ;
struct qtnf_wmac {TYPE_3__* rd; TYPE_1__ macinfo; scalar_t__ wiphy_registered; struct qtnf_vif* iflist; } ;
struct TYPE_5__ {scalar_t__ iftype; } ;
struct qtnf_vif {int /*<<< orphan*/  stats64; int /*<<< orphan*/  sta_list; TYPE_2__ wdev; scalar_t__ netdev; } ;
struct qtnf_bus {struct qtnf_wmac** mac; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_6__ {scalar_t__ n_channels; struct TYPE_6__* channels; } ;

/* Variables and functions */
 int NL80211_BAND_2GHZ ; 
 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ; 
 int NUM_NL80211_BANDS ; 
 unsigned int QTNF_MAX_INTF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 struct wiphy* FUNC2 (struct qtnf_wmac*) ; 
 int /*<<< orphan*/  FUNC3 (struct wiphy*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct qtnf_wmac*) ; 
 int /*<<< orphan*/  FUNC5 (struct qtnf_wmac*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC11 (struct wiphy*) ; 

__attribute__((used)) static void FUNC12(struct qtnf_bus *bus, unsigned int macid)
{
	struct qtnf_wmac *mac;
	struct wiphy *wiphy;
	struct qtnf_vif *vif;
	unsigned int i;
	enum nl80211_band band;

	mac = bus->mac[macid];

	if (!mac)
		return;

	wiphy = FUNC2(mac);

	for (i = 0; i < QTNF_MAX_INTF; i++) {
		vif = &mac->iflist[i];
		FUNC8();
		if (vif->netdev &&
		    vif->wdev.iftype != NL80211_IFTYPE_UNSPECIFIED) {
			FUNC7(vif->netdev);
			FUNC3(wiphy, &vif->wdev);
		}
		FUNC9();
		FUNC6(&vif->sta_list);
		FUNC0(vif->stats64);
	}

	if (mac->wiphy_registered)
		FUNC11(wiphy);

	for (band = NL80211_BAND_2GHZ; band < NUM_NL80211_BANDS; ++band) {
		if (!wiphy->bands[band])
			continue;

		FUNC1(wiphy->bands[band]->channels);
		wiphy->bands[band]->n_channels = 0;

		FUNC1(wiphy->bands[band]);
		wiphy->bands[band] = NULL;
	}

	FUNC5(mac);
	FUNC4(mac);
	FUNC1(mac->macinfo.wowlan);
	FUNC1(mac->rd);
	mac->rd = NULL;
	FUNC10(wiphy);
	bus->mac[macid] = NULL;
}