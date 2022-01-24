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
struct queue_entry {int dummy; } ;
struct data_queue {size_t* index; int /*<<< orphan*/  index_lock; struct queue_entry* entries; int /*<<< orphan*/  rt2x00dev; } ;
typedef  enum queue_index { ____Placeholder_queue_index } queue_index ;

/* Variables and functions */
 int Q_INDEX_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int) ; 

struct queue_entry *FUNC4(struct data_queue *queue,
					  enum queue_index index)
{
	struct queue_entry *entry;
	unsigned long irqflags;

	if (FUNC3(index >= Q_INDEX_MAX)) {
		FUNC0(queue->rt2x00dev, "Entry requested from invalid index type (%d)\n",
			   index);
		return NULL;
	}

	FUNC1(&queue->index_lock, irqflags);

	entry = &queue->entries[queue->index[index]];

	FUNC2(&queue->index_lock, irqflags);

	return entry;
}