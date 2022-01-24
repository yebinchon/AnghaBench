#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rt2x00_intf {int /*<<< orphan*/  beacon; } ;
struct rt2x00_dev {TYPE_2__* ops; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_4__ {TYPE_1__* lib; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* clear_beacon ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 struct rt2x00_intf* FUNC3 (struct ieee80211_vif*) ; 

int FUNC4(struct rt2x00_dev *rt2x00dev,
			     struct ieee80211_vif *vif)
{
	struct rt2x00_intf *intf = FUNC3(vif);

	if (FUNC2(!intf->beacon))
		return -ENOBUFS;

	/*
	 * Clean up the beacon skb.
	 */
	FUNC0(intf->beacon);

	/*
	 * Clear beacon (single bssid devices don't need to clear the beacon
	 * since the beacon queue will get stopped anyway).
	 */
	if (rt2x00dev->ops->lib->clear_beacon)
		rt2x00dev->ops->lib->clear_beacon(intf->beacon);

	return 0;
}