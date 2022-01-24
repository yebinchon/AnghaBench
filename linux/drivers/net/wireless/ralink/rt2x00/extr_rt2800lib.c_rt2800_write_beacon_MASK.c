#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct txentry_desc {int dummy; } ;
struct skb_frame_desc {int desc_len; int /*<<< orphan*/  desc; int /*<<< orphan*/  flags; } ;
struct rt2x00_dev {int dummy; } ;
struct queue_entry {TYPE_2__* skb; int /*<<< orphan*/  flags; int /*<<< orphan*/  entry_idx; TYPE_1__* queue; } ;
struct TYPE_7__ {unsigned int len; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {int winfo_size; struct rt2x00_dev* rt2x00dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCN_TIME_CFG ; 
 int /*<<< orphan*/  BCN_TIME_CFG_BEACON_GEN ; 
 int /*<<< orphan*/  DUMP_FRAME_BEACON ; 
 int /*<<< orphan*/  ENTRY_BCN_ENABLED ; 
 int /*<<< orphan*/  SKBDESC_DESC_IN_SKB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 struct skb_frame_desc* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const) ; 
 unsigned int FUNC4 (unsigned int,int) ; 
 unsigned int FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct queue_entry*,struct txentry_desc*) ; 
 int /*<<< orphan*/  FUNC11 (struct rt2x00_dev*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct rt2x00_dev*,int /*<<< orphan*/ ,struct queue_entry*) ; 
 scalar_t__ FUNC14 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int const) ; 

void FUNC16(struct queue_entry *entry, struct txentry_desc *txdesc)
{
	struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
	struct skb_frame_desc *skbdesc = FUNC2(entry->skb);
	unsigned int beacon_base;
	unsigned int padding_len;
	u32 orig_reg, reg;
	const int txwi_desc_size = entry->queue->winfo_size;

	/*
	 * Disable beaconing while we are reloading the beacon data,
	 * otherwise we might be sending out invalid data.
	 */
	reg = FUNC7(rt2x00dev, BCN_TIME_CFG);
	orig_reg = reg;
	FUNC12(&reg, BCN_TIME_CFG_BEACON_GEN, 0);
	FUNC8(rt2x00dev, BCN_TIME_CFG, reg);

	/*
	 * Add space for the TXWI in front of the skb.
	 */
	FUNC3(FUNC15(entry->skb, txwi_desc_size), 0, txwi_desc_size);

	/*
	 * Register descriptor details in skb frame descriptor.
	 */
	skbdesc->flags |= SKBDESC_DESC_IN_SKB;
	skbdesc->desc = entry->skb->data;
	skbdesc->desc_len = txwi_desc_size;

	/*
	 * Add the TXWI for the beacon to the skb.
	 */
	FUNC10(entry, txdesc);

	/*
	 * Dump beacon to userspace through debugfs.
	 */
	FUNC13(rt2x00dev, DUMP_FRAME_BEACON, entry);

	/*
	 * Write entire beacon with TXWI and padding to register.
	 */
	padding_len = FUNC4(entry->skb->len, 4) - entry->skb->len;
	if (padding_len && FUNC14(entry->skb, padding_len)) {
		FUNC11(rt2x00dev, "Failure padding beacon, aborting\n");
		/* skb freed by skb_pad() on failure */
		entry->skb = NULL;
		FUNC8(rt2x00dev, BCN_TIME_CFG, orig_reg);
		return;
	}

	beacon_base = FUNC5(rt2x00dev, entry->entry_idx);

	FUNC6(rt2x00dev, beacon_base, entry->skb->data,
				   entry->skb->len + padding_len);
	FUNC0(ENTRY_BCN_ENABLED, &entry->flags);

	/*
	 * Change global beacons settings.
	 */
	FUNC9(rt2x00dev);

	/*
	 * Restore beaconing state.
	 */
	FUNC8(rt2x00dev, BCN_TIME_CFG, orig_reg);

	/*
	 * Clean up beacon skb.
	 */
	FUNC1(entry->skb);
	entry->skb = NULL;
}