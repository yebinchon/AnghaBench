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
typedef  int u8 ;
struct txdone_entry_desc {int /*<<< orphan*/  flags; } ;
struct skb_frame_desc {int flags; } ;
struct TYPE_5__ {int tx_success; int tx_failed; } ;
struct TYPE_6__ {TYPE_2__ qual; } ;
struct rt2x00_dev {int /*<<< orphan*/  hw; TYPE_3__ link; int /*<<< orphan*/  extra_tx_headroom; } ;
struct queue_entry {int /*<<< orphan*/  skb; TYPE_1__* queue; } ;
struct ieee80211_tx_info {int dummy; } ;
struct TYPE_4__ {struct rt2x00_dev* rt2x00dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_FRAME_TXDONE ; 
 struct ieee80211_tx_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REQUIRE_L2PAD ; 
 int /*<<< orphan*/  REQUIRE_TASKLET_CONTEXT ; 
 int SKBDESC_DESC_IN_SKB ; 
 int SKBDESC_NOT_MAC80211 ; 
 int /*<<< orphan*/  TXDONE_SUCCESS ; 
 int /*<<< orphan*/  TXDONE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct skb_frame_desc* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct rt2x00_dev*,int /*<<< orphan*/ ,struct queue_entry*) ; 
 int /*<<< orphan*/  FUNC10 (struct rt2x00_dev*,struct queue_entry*) ; 
 int /*<<< orphan*/  FUNC11 (struct rt2x00_dev*,struct ieee80211_tx_info*,struct skb_frame_desc*,struct txdone_entry_desc*,int) ; 
 scalar_t__ FUNC12 (struct queue_entry*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct queue_entry*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC17(struct queue_entry *entry,
		      struct txdone_entry_desc *txdesc)
{
	struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
	struct ieee80211_tx_info *tx_info = FUNC0(entry->skb);
	struct skb_frame_desc *skbdesc = FUNC2(entry->skb);
	u8 skbdesc_flags = skbdesc->flags;
	unsigned int header_length;
	bool success;

	/*
	 * Unmap the skb.
	 */
	FUNC14(entry);

	/*
	 * Remove the extra tx headroom from the skb.
	 */
	FUNC15(entry->skb, rt2x00dev->extra_tx_headroom);

	/*
	 * Signal that the TX descriptor is no longer in the skb.
	 */
	skbdesc->flags &= ~SKBDESC_DESC_IN_SKB;

	/*
	 * Determine the length of 802.11 header.
	 */
	header_length = FUNC3(entry->skb);

	/*
	 * Remove L2 padding which was added during
	 */
	if (FUNC6(rt2x00dev, REQUIRE_L2PAD))
		FUNC13(entry->skb, header_length);

	/*
	 * If the IV/EIV data was stripped from the frame before it was
	 * passed to the hardware, we should now reinsert it again because
	 * mac80211 will expect the same data to be present it the
	 * frame as it was passed to us.
	 */
	if (FUNC7(rt2x00dev))
		FUNC8(entry->skb, header_length);

	/*
	 * Send frame to debugfs immediately, after this call is completed
	 * we are going to overwrite the skb->cb array.
	 */
	FUNC9(rt2x00dev, DUMP_FRAME_TXDONE, entry);

	/*
	 * Determine if the frame has been successfully transmitted and
	 * remove BARs from our check list while checking for their
	 * TX status.
	 */
	success =
	    FUNC12(entry) ||
	    FUNC16(TXDONE_SUCCESS, &txdesc->flags) ||
	    FUNC16(TXDONE_UNKNOWN, &txdesc->flags);

	/*
	 * Update TX statistics.
	 */
	rt2x00dev->link.qual.tx_success += success;
	rt2x00dev->link.qual.tx_failed += !success;

	FUNC11(rt2x00dev, tx_info, skbdesc, txdesc, success);

	/*
	 * Only send the status report to mac80211 when it's a frame
	 * that originated in mac80211. If this was a extra frame coming
	 * through a mac80211 library call (RTS/CTS) then we should not
	 * send the status report back.
	 */
	if (!(skbdesc_flags & SKBDESC_NOT_MAC80211)) {
		if (FUNC6(rt2x00dev, REQUIRE_TASKLET_CONTEXT))
			FUNC4(rt2x00dev->hw, entry->skb);
		else
			FUNC5(rt2x00dev->hw, entry->skb);
	} else {
		FUNC1(entry->skb);
	}

	FUNC10(rt2x00dev, entry);
}