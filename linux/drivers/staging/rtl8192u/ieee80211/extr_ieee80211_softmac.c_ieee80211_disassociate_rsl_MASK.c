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
struct ieee80211_device {int softmac_features; int is_set_key; int /*<<< orphan*/  dev; int /*<<< orphan*/  (* link_change ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  state; int /*<<< orphan*/  (* data_hard_stop ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_NOLINK ; 
 int IEEE_SOFTMAC_TX_QUEUE ; 
 scalar_t__ FUNC0 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct ieee80211_device *ieee)
{
	FUNC3(ieee->dev);
	if (ieee->softmac_features & IEEE_SOFTMAC_TX_QUEUE)
		FUNC2(ieee);

	if (ieee->data_hard_stop)
		ieee->data_hard_stop(ieee->dev);
	if (FUNC0(ieee))
		FUNC1(ieee);
	ieee->state = IEEE80211_NOLINK;
	ieee->is_set_key = false;
	ieee->link_change(ieee->dev);
	//HTSetConnectBwMode(ieee, HT_CHANNEL_WIDTH_20, HT_EXTCHNL_OFFSET_NO_EXT);
	FUNC4(ieee);
}