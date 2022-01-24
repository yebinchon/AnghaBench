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
typedef  int /*<<< orphan*/  u8 ;
struct rt2x00_intf {int /*<<< orphan*/  beacon_skb_mutex; int /*<<< orphan*/  delayed_flags; } ;
struct rt2x00_dev {int /*<<< orphan*/  flags; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DELAYED_UPDATE_BEACON ; 
 int /*<<< orphan*/  DEVICE_STATE_ENABLED_RADIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,struct ieee80211_vif*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct rt2x00_intf* FUNC5 (struct ieee80211_vif*) ; 

__attribute__((used)) static void FUNC6(void *data, u8 *mac,
					  struct ieee80211_vif *vif)
{
	struct rt2x00_dev *rt2x00dev = data;
	struct rt2x00_intf *intf = FUNC5(vif);

	/*
	 * It is possible the radio was disabled while the work had been
	 * scheduled. If that happens we should return here immediately,
	 * note that in the spinlock protected area above the delayed_flags
	 * have been cleared correctly.
	 */
	if (!FUNC4(DEVICE_STATE_ENABLED_RADIO, &rt2x00dev->flags))
		return;

	if (FUNC3(DELAYED_UPDATE_BEACON, &intf->delayed_flags)) {
		FUNC0(&intf->beacon_skb_mutex);
		FUNC2(rt2x00dev, vif);
		FUNC1(&intf->beacon_skb_mutex);
	}
}