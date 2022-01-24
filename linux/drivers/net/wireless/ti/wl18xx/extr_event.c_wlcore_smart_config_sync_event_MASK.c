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
struct wl1271 {TYPE_1__* hw; } ;
struct sk_buff {int dummy; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_EVENT ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NL80211_BAND_2GHZ ; 
 int NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  WLCORE_BAND_5GHZ ; 
 int /*<<< orphan*/  WLCORE_VENDOR_ATTR_FREQ ; 
 int /*<<< orphan*/  WLCORE_VENDOR_EVENT_SC_SYNC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct wl1271 *wl, u8 sync_channel,
					  u8 sync_band)
{
	struct sk_buff *skb;
	enum nl80211_band band;
	int freq;

	if (sync_band == WLCORE_BAND_5GHZ)
		band = NL80211_BAND_5GHZ;
	else
		band = NL80211_BAND_2GHZ;

	freq = FUNC2(sync_channel, band);

	FUNC5(DEBUG_EVENT,
		     "SMART_CONFIG_SYNC_EVENT_ID, freq: %d (chan: %d band %d)",
		     freq, sync_channel, sync_band);
	skb = FUNC1(wl->hw->wiphy, NULL, 20,
					  WLCORE_VENDOR_EVENT_SC_SYNC,
					  GFP_KERNEL);

	if (FUNC4(skb, WLCORE_VENDOR_ATTR_FREQ, freq)) {
		FUNC3(skb);
		return -EMSGSIZE;
	}
	FUNC0(skb, GFP_KERNEL);
	return 0;
}