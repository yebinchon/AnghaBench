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
typedef  int /*<<< orphan*/  u32 ;
struct txentry_desc {int dummy; } ;
struct rt2x00_dev {int dummy; } ;
struct queue_entry {TYPE_1__* queue; } ;
struct TYPE_2__ {struct rt2x00_dev* rt2x00dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR14 ; 
 int /*<<< orphan*/  CSR14_BEACON_GEN ; 
 int /*<<< orphan*/  DUMP_FRAME_BEACON ; 
 int /*<<< orphan*/  FUNC0 (struct queue_entry*,struct txentry_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ,struct queue_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct queue_entry*) ; 

__attribute__((used)) static void FUNC7(struct queue_entry *entry,
				   struct txentry_desc *txdesc)
{
	struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
	u32 reg;

	/*
	 * Disable beaconing while we are reloading the beacon data,
	 * otherwise we might be sending out invalid data.
	 */
	reg = FUNC4(rt2x00dev, CSR14);
	FUNC2(&reg, CSR14_BEACON_GEN, 0);
	FUNC5(rt2x00dev, CSR14, reg);

	if (FUNC6(entry)) {
		FUNC1(rt2x00dev, "Fail to map beacon, aborting\n");
		goto out;
	}
	/*
	 * Enable beaconing again.
	 */
	FUNC2(&reg, CSR14_BEACON_GEN, 1);
	/*
	 * Write the TX descriptor for the beacon.
	 */
	FUNC0(entry, txdesc);

	/*
	 * Dump beacon to userspace through debugfs.
	 */
	FUNC3(rt2x00dev, DUMP_FRAME_BEACON, entry);
out:
	/*
	 * Enable beaconing again.
	 */
	FUNC2(&reg, CSR14_BEACON_GEN, 1);
	FUNC5(rt2x00dev, CSR14, reg);
}