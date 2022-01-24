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
typedef  int u8 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct rxdone_entry_desc {int dev_flags; } ;
struct rt2x00_dev {int /*<<< orphan*/  sleep_work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  flags; int /*<<< orphan*/  aid; int /*<<< orphan*/  last_beacon; TYPE_2__* hw; } ;
struct ieee80211_tim_ie {int bitmap_ctrl; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_POWERSAVING ; 
 scalar_t__ FCS_LEN ; 
 int IEEE80211_CONF_PS ; 
 int RXDONE_MY_BSS ; 
 int /*<<< orphan*/  WLAN_EID_TIM ; 
 int FUNC0 (struct ieee80211_tim_ie*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int* FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct rt2x00_dev *rt2x00dev,
				      struct sk_buff *skb,
				      struct rxdone_entry_desc *rxdesc)
{
	struct ieee80211_hdr *hdr = (void *) skb->data;
	struct ieee80211_tim_ie *tim_ie;
	u8 *tim;
	u8 tim_len;
	bool cam;

	/* If this is not a beacon, or if mac80211 has no powersaving
	 * configured, or if the device is already in powersaving mode
	 * we can exit now. */
	if (FUNC2(!FUNC1(hdr->frame_control) ||
		   !(rt2x00dev->hw->conf.flags & IEEE80211_CONF_PS)))
		return;

	/* min. beacon length + FCS_LEN */
	if (skb->len <= 40 + FCS_LEN)
		return;

	/* and only beacons from the associated BSSID, please */
	if (!(rxdesc->dev_flags & RXDONE_MY_BSS) ||
	    !rt2x00dev->aid)
		return;

	rt2x00dev->last_beacon = jiffies;

	tim = FUNC4(skb->data, skb->len - FCS_LEN, WLAN_EID_TIM);
	if (!tim)
		return;

	if (tim[1] < sizeof(*tim_ie))
		return;

	tim_len = tim[1];
	tim_ie = (struct ieee80211_tim_ie *) &tim[2];

	/* Check whenever the PHY can be turned off again. */

	/* 1. What about buffered unicast traffic for our AID? */
	cam = FUNC0(tim_ie, tim_len, rt2x00dev->aid);

	/* 2. Maybe the AP wants to send multicast/broadcast data? */
	cam |= (tim_ie->bitmap_ctrl & 0x01);

	if (!cam && !FUNC5(CONFIG_POWERSAVING, &rt2x00dev->flags))
		FUNC3(rt2x00dev->workqueue, &rt2x00dev->sleep_work);
}