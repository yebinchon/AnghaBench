#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct txentry_desc {int dummy; } ;
struct rt2x00_dev {TYPE_3__* ops; int /*<<< orphan*/  extra_tx_headroom; } ;
struct queue_entry {TYPE_4__* skb; TYPE_1__* queue; } ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
struct TYPE_7__ {TYPE_2__* lib; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* write_tx_data ) (struct queue_entry*,struct txentry_desc*) ;scalar_t__ (* get_entry_state ) (struct queue_entry*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  qid; struct rt2x00_dev* rt2x00dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_PROJECT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  REQUIRE_DMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct queue_entry*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct queue_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct queue_entry*,struct txentry_desc*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct queue_entry *entry,
				     struct txentry_desc *txdesc)
{
	struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;

	/*
	 * This should not happen, we already checked the entry
	 * was ours. When the hardware disagrees there has been
	 * a queue corruption!
	 */
	if (FUNC7(rt2x00dev->ops->lib->get_entry_state &&
		     rt2x00dev->ops->lib->get_entry_state(entry))) {
		FUNC1(rt2x00dev,
			   "Corrupt queue %d, accessing entry which is not ours\n"
			   "Please file bug report to %s\n",
			   entry->queue->qid, DRV_PROJECT);
		return -EINVAL;
	}

	/*
	 * Add the requested extra tx headroom in front of the skb.
	 */
	FUNC4(entry->skb, rt2x00dev->extra_tx_headroom);
	FUNC0(entry->skb->data, 0, rt2x00dev->extra_tx_headroom);

	/*
	 * Call the driver's write_tx_data function, if it exists.
	 */
	if (rt2x00dev->ops->lib->write_tx_data)
		rt2x00dev->ops->lib->write_tx_data(entry, txdesc);

	/*
	 * Map the skb to DMA.
	 */
	if (FUNC2(rt2x00dev, REQUIRE_DMA) &&
	    FUNC3(entry))
		return -ENOMEM;

	return 0;
}