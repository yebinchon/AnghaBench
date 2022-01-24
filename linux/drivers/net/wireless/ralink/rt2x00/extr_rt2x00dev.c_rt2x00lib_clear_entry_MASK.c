#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rt2x00_dev {TYPE_2__* ops; } ;
struct queue_entry {TYPE_3__* queue; scalar_t__ flags; int /*<<< orphan*/ * skb; } ;
struct TYPE_7__ {int /*<<< orphan*/  tx_lock; } ;
struct TYPE_6__ {TYPE_1__* lib; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* clear_entry ) (struct queue_entry*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  Q_INDEX_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct queue_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct queue_entry*) ; 

__attribute__((used)) static void FUNC6(struct rt2x00_dev *rt2x00dev,
				  struct queue_entry *entry)
{
	/*
	 * Make this entry available for reuse.
	 */
	entry->skb = NULL;
	entry->flags = 0;

	rt2x00dev->ops->lib->clear_entry(entry);

	FUNC0(entry, Q_INDEX_DONE);

	/*
	 * If the data queue was below the threshold before the txdone
	 * handler we must make sure the packet queue in the mac80211 stack
	 * is reenabled when the txdone handler has finished. This has to be
	 * serialized with rt2x00mac_tx(), otherwise we can wake up queue
	 * before it was stopped.
	 */
	FUNC3(&entry->queue->tx_lock);
	if (!FUNC1(entry->queue))
		FUNC2(entry->queue);
	FUNC4(&entry->queue->tx_lock);
}