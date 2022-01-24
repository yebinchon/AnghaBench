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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {struct data_queue* bcn; } ;
struct queue_entry {int /*<<< orphan*/  entry_idx; int /*<<< orphan*/  flags; } ;
struct data_queue {int limit; struct queue_entry* entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCN_OFFSET0 ; 
 int /*<<< orphan*/  BCN_OFFSET1 ; 
 int /*<<< orphan*/  ENTRY_BCN_ENABLED ; 
 int /*<<< orphan*/  MAC_BSSID_DW1 ; 
 int /*<<< orphan*/  MAC_BSSID_DW1_BSS_BCN_NUM ; 
 int FUNC0 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct rt2x00_dev *rt2x00dev)
{
	struct data_queue *queue = rt2x00dev->bcn;
	struct queue_entry *entry;
	int i, bcn_num = 0;
	u64 off, reg = 0;
	u32 bssid_dw1;

	/*
	 * Setup offsets of all active beacons in BCN_OFFSET{0,1} registers.
	 */
	for (i = 0; i < queue->limit; i++) {
		entry = &queue->entries[i];
		if (!FUNC4(ENTRY_BCN_ENABLED, &entry->flags))
			continue;
		off = FUNC0(rt2x00dev, entry->entry_idx);
		reg |= off << (8 * bcn_num);
		bcn_num++;
	}

	FUNC2(rt2x00dev, BCN_OFFSET0, (u32) reg);
	FUNC2(rt2x00dev, BCN_OFFSET1, (u32) (reg >> 32));

	/*
	 * H/W sends up to MAC_BSSID_DW1_BSS_BCN_NUM + 1 consecutive beacons.
	 */
	bssid_dw1 = FUNC1(rt2x00dev, MAC_BSSID_DW1);
	FUNC3(&bssid_dw1, MAC_BSSID_DW1_BSS_BCN_NUM,
			   bcn_num > 0 ? bcn_num - 1 : 0);
	FUNC2(rt2x00dev, MAC_BSSID_DW1, bssid_dw1);
}