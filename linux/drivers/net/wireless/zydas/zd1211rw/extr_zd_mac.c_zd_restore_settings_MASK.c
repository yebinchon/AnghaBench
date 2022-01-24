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
struct zd_mc_hash {int dummy; } ;
struct TYPE_2__ {int interval; int period; int /*<<< orphan*/  last_update; } ;
struct zd_mac {unsigned int short_preamble; int /*<<< orphan*/  lock; TYPE_1__ beacon; int /*<<< orphan*/  type; int /*<<< orphan*/  chip; int /*<<< orphan*/  hw; int /*<<< orphan*/ * vif; int /*<<< orphan*/  channel; struct zd_mc_hash multicast_hash; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  NL80211_IFTYPE_MESH_POINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC2 (struct zd_mac*) ; 
 int /*<<< orphan*/  FUNC3 (struct zd_mac*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct zd_mc_hash*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct zd_mac*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 

int FUNC11(struct zd_mac *mac)
{
	struct sk_buff *beacon;
	struct zd_mc_hash multicast_hash;
	unsigned int short_preamble;
	int r, beacon_interval, beacon_period;
	u8 channel;

	FUNC0(FUNC9(mac), "\n");

	FUNC4(&mac->lock);
	multicast_hash = mac->multicast_hash;
	short_preamble = mac->short_preamble;
	beacon_interval = mac->beacon.interval;
	beacon_period = mac->beacon.period;
	channel = mac->channel;
	FUNC5(&mac->lock);

	r = FUNC2(mac);
	if (r < 0) {
		FUNC0(FUNC9(mac), "set_mac_and_bssid failed, %d\n", r);
		return r;
	}

	r = FUNC6(&mac->chip, channel);
	if (r < 0) {
		FUNC0(FUNC9(mac), "zd_chip_set_channel failed, %d\n",
			  r);
		return r;
	}

	FUNC3(mac, short_preamble);

	r = FUNC7(&mac->chip, &multicast_hash);
	if (r < 0) {
		FUNC0(FUNC9(mac),
			  "zd_chip_set_multicast_hash failed, %d\n", r);
		return r;
	}

	if (mac->type == NL80211_IFTYPE_MESH_POINT ||
	    mac->type == NL80211_IFTYPE_ADHOC ||
	    mac->type == NL80211_IFTYPE_AP) {
		if (mac->vif != NULL) {
			beacon = FUNC1(mac->hw, mac->vif);
			if (beacon)
				FUNC8(mac->hw, beacon, false);
		}

		FUNC10(&mac->chip, beacon_interval,
					beacon_period, mac->type);

		FUNC4(&mac->lock);
		mac->beacon.last_update = jiffies;
		FUNC5(&mac->lock);
	}

	return 0;
}